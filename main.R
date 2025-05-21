library(rmarkdown)

# Define paths
data_dir <- "data"
results_dir <- "results"

# Ensure the results directory exists
if (!dir.exists(results_dir)) {
  dir.create(results_dir)
}

# Render the first markdown file
rmarkdown::render(
  input = "MGMT_TCGA.Rmd",
  output_file = file.path(results_dir, "MGMT_TCGA.html")
)

# Render the second markdown file
rmarkdown::render(
  input = "MGMT_Cellline.Rmd",
  output_file = file.path(results_dir, "MGMT_Cellline.html")
)

sessionInfo()