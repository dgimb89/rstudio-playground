# R packages to install
packages <- c(
  'BiocManager',
  'quarto',
  'rmarkdown',
  'tidymodels',
  'tidyverse',
  'workflowr'
)

# Install core packages
install.packages(packages, Ncpus = parallel::detectCores())

# Install Bioconductor
BiocManager::install(version = '3.20')
