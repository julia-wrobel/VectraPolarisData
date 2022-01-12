df <- data.frame(
    BiocVersion = "3.14",
    Genome = NA,
    SourceType = "txt",
    SourceVersion = NA,
    Coordinate_1_based = NA,
    DataProvider = NA, # Add info in help file /Vignette
    RDataClass = "SpatialExperiment",
    DispatchClass = "Rda",
    Maintainer = "Julia Wrobel <julia.wrobel@cuanschutz.edu>",
    stringsAsFactors = FALSE
)

# subdirectory specific to current Bioc version
dir <- file.path("VectraPolarisData", df$BiocVersion)

dfs <- list(
    data.frame(
        Title = "HumanLungCancerV3",
        Species = "Homo sapiens",
        RDataPath = file.path(dir, "HumanLungCancerV3.rda"),
        SourceUrl = NA,
        Description = paste(
            "Vectra 3 multiplex immunohistochemistry (mIHC) dataset",
            "of non-small cell lung cancer tissue with",
            "XX cells from YY total images from ZZ patients")  ## fill in these details
    ),
    data.frame(
        Title = "HumanOvarianCancerVP",
        Species = "Homo sapiens",
        RDataPath = file.path(dir, "HumanOvarianCancerVP.rda"),
        SourceUrl = NA,
        Description = paste(
            "Vectra Polaris multiplex immunohistochemistry (mIHC) dataset",
            "of cancerous ovarian tissue with",
            "XX cells from YY total images from ZZ patients") ## fill in these details
    )
)

dfs <- lapply(dfs, cbind, df)
df <- do.call(rbind, dfs)

tax_ids <- c(
    "Homo sapiens" = "9606")
df$TaxonomyId <- tax_ids[df$Species]

fnm <- "inst/extdata/metadata.csv"
write.csv(df, fnm, row.names = FALSE)
