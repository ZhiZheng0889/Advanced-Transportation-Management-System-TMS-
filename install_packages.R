packages <- c(
  "shiny", "shinydashboard", "shinyjs",
  "DBI", "RPostgres", "dplyr", "ggplot2", "DT", "jsonlite",
  # Optional helpers
  "dotenv", "lintr"
)

installed <- rownames(installed.packages())
to_install <- setdiff(packages, installed)

if (length(to_install)) {
  message("Installing packages: ", paste(to_install, collapse = ", "))
  install.packages(to_install, repos = "https://cloud.r-project.org")
} else {
  message("All required packages already installed")
}

message("Done")
