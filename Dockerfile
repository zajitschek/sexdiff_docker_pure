## Loads an R image, based on the rocker 'geospatial' image
FROM rocker/tidyverse:3.6.0

## Install R packages, using littler function
RUN install2.r pacman metafor devtools kableExtra robumeta ggpubr png here knitr pander splus2R
