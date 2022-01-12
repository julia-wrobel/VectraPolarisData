# Human Lung Cancer from Vectra 3 experiment
library(tidyverse)
library(SpatialExperiment)

######################################################################
# Convert Inform-processed mIHC data to SpatialExperiment object
file_path = "~/Data/2021/202108_schenk_normalization"
spe_lung = readVectraTable(sample_path = file_path,
                           save = FALSE)


# Data has 8 markers for 1604786 cells.
# 153 subjects
# 761 total images


######################################################################
# Load clinical data
file_path_clinical = "~/Data/2021/202108_schenk_normalization/Lung_clinical.csv"
clinical_data = read_csv(file_path_clinical)


######################################################################
# Process clinical data
# Check with Erin Schenk about understanding these data- check the original paper
# Include a subset of these features
clinical_data = clinical_data %>%
  janitor::clean_names() %>%
  select(patient_id, gender, age_at_diagnosis, date_of_diagnosis, stage_at_diagnosis, stage_numeric, t, n, m, largest_size, number_ln_taken, number_ln,
         lvi, surgery, survival_days, censor_0_alive_1_dead, cause_of_death, adjuvant_therapy, therapy_type, number_cycles,
         date_of_recurrence, time_to_recurrence_days, pack_years, accession_date, duration,chemo_type_s, path)


######################################################################
# Add clinical data to spe object via colData
# How do I easily add more colData to spatialExperiment object
# what is sample_id supposed to represent? Is this an id for each cell/spot?
unique(colData(spe_lung)$slide_id) %>% head()
clinical_data$patient_id %>% head()

# need to match patient_id with slide_id

# make small separate table and add to metadata slot
# experiment_info example in GitHub
# https://bioconductor.org/packages/release/workflows/html/cytofWorkflow.html
     # Vignette for CyTOF workflow has some examples
     # https://bioconductor.org/packages/release/workflows/html/cytofWorkflow.html
  # Use the same sample name


######################################################################
# save spe object
