install.packages(c("tidyverse", "ggpubr","e1071","foreign", "janitor"))

library(tidyverse)
library(ggpubr)
library(e1071)
library(foreign)
library(janitor)
theme_set(theme_pubr())

# Set working directory
setwd("C:/dev/git/scotland-alphanumeric")

# Specify data frame
scotland_names <- read.dbf(file = 'gis_osm_places27700.dbf', as.is = FALSE)

# Investigate
head(scotland_names)

# Select name and coords
scotland_names <- scotland_names %>%
  select(NAME,Y,X) 

# Remove rows with empty lines
scotland_names[!(is.na(scotland_names$NAME) | scotland_names$NAME==""), ]
scotland_names <- na.omit(scotland_names) 

# Order from North to South
north_south <- scotland_names[order(scotland_names$Y, decreasing = TRUE),] %>%
  select(NAME, Y, X)

# Investigate
head(north_south)

# Write to CSV
write.csv(north_south, 'north_south.csv')

