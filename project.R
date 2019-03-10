
library("readxl")

# download the xlsx file to working directory of R
# working directory can be found by running getwd()
xlsxFile <- "StatisfactionSurvey2.xlsx" 

# reading the file places "N/A" where there are invalid scores, which is what we want
df <- read_excel("SatisfactionSurvey2.xlsx")
str(df)
df <- na.omit(df)
range(df$Satisfaction)
hist(df$Satisfaction)

a <- as.character(df$Satisfaction)
a[nchar(a)==max(nchar(a))]

library(ggplot2)
ggplot(my_data, aes(x=`Flight date`, y=`Scheduled Departure Hour`)) + geom_tile(aes(fill=Satisfaction))
ggplot(my_data, aes(x=`Flight date`, y=`Destination State`)) + geom_tile(aes(fill=Satisfaction))