df <- data.frame(
    BiocVersion = "3.15",
    Genome = NA,
    SourceType = "TXT",
    SourceVersion = NA,
    Coordinate_1_based = NA,
    DataProvider = NA, # Add info in help file /Vignette
    RDataClass = "SpatialExperiment",
    DispatchClass = "Rds",
    Maintainer = "Julia Wrobel <julia.wrobel@cuanschutz.edu>",
    stringsAsFactors = FALSE
)

# subdirectory specific to current Bioc version
dir <- file.path("VectraPolarisData", df$BiocVersion)

dfs <- list(
    data.frame(
        Title = "HumanLungCancerV3",
        Species = "Homo sapiens",
        RDataPath = file.path(dir, "spe_lung.rds"),
        SourceUrl = "http://www.doi.org/10.1101/2021.02.24.432729",
        Description = paste(
            "Vectra 3 multiplex immunohistochemistry (mIHC) dataset",
            "of non-small cell lung cancer tissue with",
            "1,604,786 cells from 761 total images from 153 patients")  ## fill in these details
    ),
    data.frame(
        Title = "HumanOvarianCancerVP",
        Species = "Homo sapiens",
        RDataPath = file.path(dir, "spe_ovarian.rds"),
        SourceUrl = "http://www.doi.org/10.1158/1541-7786.mcr-21-0411",
        Description = paste(
            "Vectra Polaris multiplex immunohistochemistry (mIHC) dataset",
            "from a tumor microarray of cancerous ovarian tissue with",
            "1,610,431 cells from 132 total images from 132 patients") ## fill in these details
    )
)

dfs <- lapply(dfs, cbind, df)
df <- do.call(rbind, dfs)

tax_ids <- c(
    "Homo sapiens" = "9606")
df$TaxonomyId <- tax_ids[df$Species]

fnm <- "inst/extdata/metadata.csv"
write.csv(df, fnm, row.names = FALSE)
