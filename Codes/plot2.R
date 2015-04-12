#Plot2

*Plotting total emissions of PM2.5 in Baltimore, Maryland between 1999 - 2008*
  
## Calculate total PM2.5 emissions by year in Baltimore
Baltimore <- NEI[NEI$fips == "24510", ]
TotalEmissionPY <- tapply(Baltimore$Emissions, Baltimore$year, sum)

## Create plot
par("mar"=c(5.1, 4.5, 4.1, 2.1))
png(filename = "plot2.png", 
    width = 480, height = 480, 
    units = "px")

plot(TotalEmissionPY, x = rownames(TotalEmissionPY), type = "n", axes = FALSE, 
     ylab = expression("Total PM"[2.5] * " Emission (in tons)"), xlab = "Year", 
     main = expression("Total PM"[2.5] * " Emission in Baltimore (1999 - 2008)"))
points(TotalEmissionPY, x = rownames(TotalEmissionPY), pch = 20, col = "red")
lines(TotalEmissionPY, x = rownames(TotalEmissionPY), col = "blue")
axis(2)
axis(side = 1, at = seq(1999, 2008, by = 3))
box()

dev.off()