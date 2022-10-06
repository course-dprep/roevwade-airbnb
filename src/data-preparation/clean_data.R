# Cleaning the Data #

# Loading packages
library(dplyr)

# Load merged data 
load("./gen/temp/combined_data")

# Filter the combined data and store it as a new data without unwanted columns
combined_data1 <- subset(combined_data, select = c("host_id", "price", "city", "states", "time", "category"))

## Create a dummy variable to identify the states where abortion is legal or not after overturning Roe v wade.  example lets assumed that countries with code 5,6, and 7 were treated (=1). states has the category "Legal" and "Gestational Limit" (abortion is banned after >= 15 weeks of pregnancy) are treated as "legal" (=0); states has the category "Banned" are treated as "banned"(=1) in our analysis. 
combined_data1$category1 <- ifelse(combined_data1$category == "Legal", 0, 1)
head(combined_data)

## aggregate data to state level 
options(dplyr.summarise.inform = FALSE)
df_grouped <- combined_data1 %>%
  group_by(states, time, category) %>%
  summarise(avg_price = mean(price))
df_grouped
