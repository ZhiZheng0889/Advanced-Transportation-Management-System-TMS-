# Advanced Transportation Management System (TMS)

An interactive R/Shiny application demonstrating a Transportation/Warehouse Management System backed by PostgreSQL. It showcases dashboards, basic auth flows, and database‑driven visualizations for orders, shipments, drivers, vehicles, and warehouses.

## Features
- Shiny dashboard with tabs for login, signup, schema, and visual analytics
- PostgreSQL integration via `DBI`/`RPostgres`
- Parameterized queries for safer DB access
- Reusable plotting helpers with `ggplot2`
- Presentations and reports included for context

## Tech Stack
- R, Shiny, shinydashboard, shinyjs
- DBI, RPostgres, dplyr, ggplot2, DT, jsonlite
- PostgreSQL (ElephantSQL or local Postgres)

## Repository Layout
- `app.rmd` – Shiny R Markdown app (runtime: shiny)
- `app_v2.rmd` – Alternative Shiny dashboard variant
- `install_packages.R` – Convenience script to install required packages
- `Midterm_Presentaiton.pptx`, `Final_Presentation.pptx`, `*.docx`, `*.pdf` – Project deliverables

## Getting Started
1) Prerequisites
   - R 4.2+ (RStudio recommended)
   - A PostgreSQL database (local or hosted)

2) Install R packages
   - Run `Rscript install_packages.R` or in R: `source("install_packages.R")`

3) Configure database credentials
   - Copy `.env.example` to `.env` and fill in values, or set these in `~/.Renviron`:
     - `DB_NAME=...`
     - `DB_HOST=...`
     - `DB_PORT=5432`
     - `DB_USER=...`
     - `DB_PASSWORD=...`

4) Run the app
   - Open `app.rmd` (or `app_v2.rmd`) in RStudio and click "Run Document"/"Run App"
   - Or from R: `rmarkdown::run("app.rmd")`

## Security
- No secrets are committed to the repo. Use environment variables via `.env`/`.Renviron`.
- Queries use parameter binding to reduce SQL injection risk.

## Notes for Reviewers
- This is an academic/demo TMS showcasing typical entities and dashboards.
- See `Final_Presentation.pptx` and `Advanced Database TMS Report.docx` for design context.

## License
This project is licensed under the MIT License. See `LICENSE`.
