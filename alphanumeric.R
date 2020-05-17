install.packages(c("dplyr", "readr", "readODS", "cellranger"))

# load libraries
library(readr)
library(dplyr)
library(readODS)
library(cellranger)
library(data.table)
library(tidyverse)



# set working directory
setwd("C:/dev/git/scotland-alphanumeric")

# Here we will process the Practical Test Centres and their locations
# Define data frame for the Practical Test Centres
scotland_names <- read.csv(file = 'osm_places.csv', header=TRUE)


north_south <- scotland_names[order(scotland_names$y, decreasing = TRUE),] %>%
  select(name)



head(north_south)



# Investigate
head(scotland_names)
summary(scotland_names) # There are 368 test centres

