# Human Lung Cancer from Vectra 3 experiment
library(tidyverse)
library(SpatialExperiment)
library(VectraPolarisData)

source("inst/scripts/make-data.R")

######################################################################
# Convert Inform-processed mIHC data to SpatialExperiment object
sample_path = "data"
spe_lung = readVectraTable(sample_path = sample_path,
                           save = FALSE)

# Data has 8 markers for 1604786 cells.
# 153 subjects
# 761 total images

# change a few names
# dapi_dapi to dapi
# remove autofluorescence stuff

######################################################################
# Load clinical data
file_path_clinical = "data/Lung_clinical.csv"
clinical_data = read_csv(file_path_clinical)

######################################################################
# Process clinical data
# survival_status is censoring variable 0 = alive, 1 = dead
clinical_data = clinical_data %>%
  janitor::clean_names() %>%
  # select variables of interest
  select(patient_id, gender, age_at_diagnosis, stage_at_diagnosis,  stage_numeric, pack_years,
         survival_days, survival_status = censor_0_alive_1_dead,
         #t, n, m, largest_size, number_ln_taken, number_ln, lvi,  # commenting out because don't know what these variables are
         #therapy_type, number_cycles, # these don't seem too useful from a data analysis standpoint (lots of NAs)
         surgery,  cause_of_death, adjuvant_therapy,
         time_to_recurrence_days, recurrence_or_lung_ca_death)


######################################################################
# Add clinical data to spe object via colData

# process patient id variable (called slide_id in the Vectra data) to match up with Vectra data
vectra_id = tibble(slide_id = unique(colData(spe_lung)$slide_id),
       id = slide_id) %>%
  separate(id, into = c("number", "patient_id"), sep = " ") %>%
  select(-number)

# merge with clinical_data
clinical_data = inner_join(vectra_id, clinical_data, by = "patient_id") %>%
  select(-patient_id) %>% as.data.frame()

# add as table to the dataset
# check if Lukas as updated spatialExperiment package
# check how multiplex imaging data is stored in imctools package

# make small separate table and add to metadata slot
# experiment_info example in GitHub
# https://bioconductor.org/packages/release/workflows/html/cytofWorkflow.html
# Vignette for CyTOF workflow has some examples
# https://bioconductor.org/packages/release/workflows/html/cytofWorkflow.html
#http://bioconductor.org/books/3.13/OSCA.intro/the-singlecellexperiment-class.html


######################################################################
# save spe object
