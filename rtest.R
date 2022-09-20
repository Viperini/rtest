library(ggplot2)

#Set wd to where the script is being run
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Command used in bash to edit the year out of the file
# Turns out to be pointless in the end, since I end up using scale_x_discrete
# cat Scorings.csv | sed 's/\/2020//g' > editScorings.csv

#Loading data
scorings <- read.csv("editScorings.csv", sep=";")
scorings2 <- scorings
scorings2["Date"][2]

#Plotting
ggplot(data = scorings) + 
  geom_jitter(mapping = aes(y=Weight, x=Date, colour=Color, shape=Sex)) +
  scale_x_discrete(
    "Date",
    labels = c(
      "04/30" = "April 30",
      "08/08" = "August 8",
      "08/29" = "August 29",
      "09/06" = "September 6"))

