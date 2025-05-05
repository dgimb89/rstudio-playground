# User-specific standard R packages to install
packages <- c(
  'countrycode'
)
install.packages(packages)

# additional packages from other sources
install.packages("ggflags", repos = c(
  "https://jimjam-slam.r-universe.dev",
  "https://cloud.r-project.org"))
