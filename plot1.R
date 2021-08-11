library(readxl)
library(lubridate)
library(tidyverse)

# set working directory
setwd("C:/Users/Mahmud/Documents/Coursera/Coursera_Data")

# load the dataset
df <- read_excel("household_power_consumption.xls",
                 sheet = 1, 
                 na = c('NA', " ","."))

# Making the plot 
df_plot1 = hist(df$Global_active_power,
     xlab = "Global Active Power (kilowatts)",
     col  = "red",
     main = "Global Active Power")

# making and saving the plot
png(file="plot1.png", width=480, height=480)
hist(df$Global_active_power,
     xlab = "Global Active Power (kilowatts)",
     col  = "red",
     main = "Global Active Power")
dev.off()
