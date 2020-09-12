## Loads an R image, based on the rocker 'geospatial' image
FROM rocker/tidyverse:3.6.0

## Loads R code and data
RUN mkdir -p /usr/src/Data
RUN mkdir -p /usr/src/R
COPY ./Data /usr/src/Data
COPY ./R /usr/src/R

## Install R packages, using littler function
RUN install2.r pacman metafor devtools kableExtra robumeta ggpubr png here knitr pander splus2R
