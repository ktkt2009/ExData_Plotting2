#Plot5#
#Plotting emissions of PM2.5 from motor vehicle sources in Baltimore (1999 - 2008)

## Find all the motor vehicle sources from 'SCC'
MVSource <- unique(grep("Vehicles", SCC$EI.Sector, ignore.case = TRUE, value = TRUE))
MVCodes <- SCC[SCC$EI.Sector %in% MVSource , ]["SCC"]

## Subset emissions due to motor vehicle sources in from 'NEI' for Baltimore
Baltimore_MV_Emission <- NEI[NEI$SCC %in% MVCodes$SCC & NEI$fips == "24510", ]


## Calculate the emissions due to motor vehicles in Baltimore for every year
TotalMV_EmissionsPY <- tapply(Baltimore_MV_Emission$Emissions, 
                              Baltimore_MV_Emission$year, sum)

png(filename = "plot5.png", 
    width = 480, height = 480, 
    units = "px")

plot(TotalMV_EmissionsPY, x = rownames(TotalMV_EmissionsPY), 
     type = "n", axes = FALSE, ylab = expression("Motor Vehicle Related PM"[2.5] * 
                                                   " Emission (in tons)"), xlab = "Year", main = expression("Motor Vehicle Related PM"[2.5] * 
                                                                                                              " Emission in Baltimore (1999 - 2008)"))
points(TotalMV_EmissionsPY, x = rownames(TotalMV_EmissionsPY), 
       pch = 16, col = "red")
lines(TotalMV_EmissionsPY, x = rownames(TotalMV_EmissionsPY), 
      col = "blue")
axis(2)
axis(side = 1, at = seq(1999, 2008, by = 3))
box()

dev.off()
