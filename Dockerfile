## Load RStudio 3.6.0 image, based on the rocker 'tidyverse' image
FROM rocker/tidyverse:3.6.0

## Create docker image directories ~/R and ~/Data
RUN mkdir -p /home/rstudio/R
RUN mkdir -p /home/rstudio/Data

## Copy github directories R and Data into docker image directories
COPY R /home/rstudio/R
COPY Data /home/rstudio/Data

## Install R packages, using littler function
RUN install2.r pacman metafor devtools kableExtra robumeta ggpubr png here knitr pander splus2R
