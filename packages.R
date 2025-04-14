# R packages to install
packages <- c(
  'rmarkdown',
  'tidyverse',
  'tidymodels',
  'workflowr',
  'BiocManager',
  'quarto'
)

# Install core packages
install.packages(packages)

# Install Bioconductor
BiocManager::install(version = '3.20')
