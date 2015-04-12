# Total emissions from PM2.5 decreased in the United States from 1999 to 2008
#Using the base plotting system

#Loading Data#
setwd("C:/Users/User/Desktop/Rdirectory/Data/zips/unzip")
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#Observe the variables#
head(NEI)
head(SCC)

#Plotting total emissions of PM2.5 in United States between 1999 - 2008#
TotalEmissionPY <- tapply(NEI$Emissions, NEI$year, sum)
## Create plot1
par("mar"=c(5.1, 4.5, 4.1, 2.1))
png(filename = "plot1.png", 
    width = 480, height = 480, 
    units = "px")

plot(TotalEmissionPY, x = rownames(TotalEmissionPY), type = "n", axes = FALSE, 
     ylab = expression("Total PM"[2.5] * " Emission (in tons)"), xlab = "Year", 
     main = expression("Total PM"[2.5] * " Emission (1999 - 2008)"))
points(TotalEmissionPY, x = rownames(TotalEmissionPY), pch = 20, col = "red")
lines(TotalEmissionPY, x = rownames(TotalEmissionPY), col = "green")
axis(2)
axis(side = 1, at = seq(1999, 2008, by = 3))
box()

dev.off()