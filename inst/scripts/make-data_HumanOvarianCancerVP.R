# Human Ovarian Cancer from Vectra Polaris experiment
library(tidyverse)
library(phenoptr)
library(SpatialExperiment)
library(VectraPolarisData)

source("inst/scripts/make-data.R")

######################################################################
# Convert Inform-processed mIHC data to SpatialExperiment object
sample_path = "data/ovarian"
spe_ovarian = readVectraTable(sample_path = sample_path,
                           save = FALSE)
# Data has 10 markers for 1610431 cells.
# 132 images
# 132 subjects


######################################################################
# Load clinical data
file_path_clinical = "data/ovarian/Ovarian_clinical.csv"
clinical_data = read_csv(file_path_clinical)

######################################################################
# Process clinical data

clinical_data = clinical_data %>%
  janitor::clean_names() %>%
  # select variables of interest
  select(sample_id = sample_name, tma, diagnosis, primary, recurrent, treatment_effect, stage,
         grade,
         survival_time = overall_survival,
         death = death_1_yes_0_no,
         BRCA_mutation= brca_mutation_y_1_n_0_n_a_blank, age_at_diagnosis,
         time_to_recurrence, parpi_inhibitor= par_pi, debulking) %>%
  mutate(stage = case_when(grepl("T1", stage) ~ "1",
    grepl("T2", stage) ~ "2",
    grepl("T3", stage) ~ "3",
    grepl("T4", stage) ~ "4"),
    sample_id = ifelse(is.na(sample_id), NA, paste0("030120 P9HuP6 TMA 1-", sample_id)))
######################################################################
# Add clinical data to spe object via colData

# obtain sample id variable (called sample_id in the VectraPolaris data) from cell level data
vectra_id <- tibble(sample_id = unique(colData(spe_ovarian)$sample_id))


# merge with clinical_data
clinical_data <- inner_join(vectra_id, clinical_data, by = "sample_id") %>%
  as.data.frame()


# add as table to the dataset as metadata
metadata(spe_ovarian)$clinical_data <- clinical_data


######################################################################
# save spe object
saveRDS(spe_ovarian, file = "data/spe_ovarian.rds")
