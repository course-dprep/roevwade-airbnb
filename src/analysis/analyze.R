# Analysing the Data #

# Load the final merged data 
load("./gen/temp/combined_data1")

# Create an interaction between time and category1. We will call this interaction 'did'
combined_data1$did <- combined_data1$time * combined_data1$category1

# Estimate the DID estimator
didreg = lm(price ~ category1 + time + did, data = combined_data1)
summary(didreg)

# Estimate the DID estimator
didreg1 = lm(price ~ category1*time, data = combined_data1)
summary(didreg1)


# Calculate the mean prices before the overturning
mean_price_before_legal <- combined_data1 %>% filter(time == 0 & category1 == 0) %>% mean(combined_data1$price)

# Calculate the mean prices after the overturning
