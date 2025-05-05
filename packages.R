# R packages to install
packages <- c(
  'BiocManager',
  'countrycode',
  'ggflags',
  'quarto',
  'rmarkdown',
  'tidymodels',
  'tidyverse',
  'workflowr'
)

# Install core packages
install.packages(packages)

# Install Bioconductor
BiocManager::install(version = '3.20')
