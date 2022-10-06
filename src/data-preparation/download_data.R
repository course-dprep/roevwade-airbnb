# Downloading the Data #

# Loading packages
library(dplyr)
library(googlesheets4)

# Importing the Google Sheet in R.
gs4_deauth()
df <- read_sheet("https://docs.google.com/spreadsheets/d/1tOMjx-lflqp-9XC1iGc9tdBIfK-nrOdlsLnFGgLFdVA/edit#gid=0")
url <- as.character(df$url)

# Reading the datasets for all cities
tbl <- lapply(url, function(url) {
  print(paste0('Now downloading ... ', url))
  d <- read.csv(url)
  city = tolower(as.character(df$city[match(url, df$url)]))
  d$city <- city
  states = as.character(df$states[match(url, df$url)])
  d$states <- states
  time = df$time[match(url, df$url)]
  d$time <- time
  category = df$category[match(url, df$url)]
  d$category <- category
  return(d)
})

# Combining the data into a single data frame
combined_data = do.call('rbind', tbl)
