# Human Ovarian Cancer from Vectra Polaris experiment
library(tidyverse)
library(phenoptr)
library(SpatialExperiment)
library(VectraPolarisData)

source("inst/scripts/make-data.R")

######################################################################
# Convert Inform-processed mIHC data to SpatialExperiment object
sample_path = "data"
spe_ovarian = readVectraTable(sample_path = sample_path,
                           save = FALSE)
# Data has 10 markers for 1610431 cells.
# 132 images
# 132 subjects


######################################################################
# Load clinical data
file_path_clinical = "data/Ovarian_clinical.csv"
clinical_data = read_csv(file_path_clinical)

######################################################################
# Process clinical data

clinical_data = clinical_data %>%
  janitor::clean_names() %>%
  # select variables of interest
  select(sample_name, tma, diagnosis, primary, recurrent, treatment_effect, stage,
         grade,
         survival_time = overall_survival,
         death = death_1_yes_0_no,
         BRCA_mutation= brca_mutation_y_1_n_0_n_a_blank, age_at_diagnosis,
         time_to_recurrence, parpi_inhibitor= par_pi, debulking)
######################################################################
# Add clinical data to spe object via colData

# process sample id variable (called sample_name in the VectraPolaris data) to match up with Vectra data
vectra_id <- tibble(sample_id = unique(colData(spe_ovarian)$sample_id),
                    id = sample_id)
## for some reason, 'str_split_n' is not an exported object from 'namespace:stringr'
#stringr::str_split_n(vectra_id[1], "-", 2)
## that's why, taken a re-route
vectraP_id<- str_split(vectra_id[[1]][1:dim(vectra_id[1])[1]], "-")
vectraP_id<- unlist(vectraP_id)
vectraP_id<- tibble(vectraP_id[2*(1:(length(vectraP_id)/2))])
colnames(vectraP_id)<- "sample_name"
# merge with clinical_data
clinical_data <- inner_join(vectraP_id, clinical_data, by = "sample_name") %>%
   as.data.frame()

clinical_data <- clinical_data %>%
  mutate(stage = case_when(
    grepl("T1", stage) ~ "1",
    grepl("T2", stage) ~ "2",
    grepl("T3", stage) ~ "3",
    grepl("T4", stage) ~ "4"
  ))

# add as table to the dataset as metadata
metadata(spe_ovarian)$clinical_data <- clinical_data

######################################################################
# save spe object
saveRDS(spe_ovarian, file = "data/spe_ovarian.rds")
