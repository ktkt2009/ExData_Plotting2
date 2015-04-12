#Plot6#
## Find all the coal combustion related sources from 'SCC'
TotalCoalCombustion<- SCC[SCC$EI.Sector == "Fuel Comb - Comm/Institutional - Coal", 
                             ]["SCC"]

## Subset emissions due to coal combustion sources from 'NEI'
Emission_Coal <- NEI[NEI$SCC %in% TotalCoalCombustion$SCC, ]

## Calculate the emissions due to coal each year across United States
TotalCoalEmissionsPY <- tapply(Emission_Coal$Emissions, Emission_Coal$year,sum)

## Create the plot
png(filename = "plot6.png", 
    width = 480, height = 480, 
    units = "px")

plot(TotalCoalEmissionsPY, x = rownames(TotalCoalEmissionsPY), type = "n", 
     axes = FALSE, ylab = expression("Coal Related PM"[2.5] * " Emission (in tons)"), 
     xlab = "Year", main = expression("Coal Related PM"[2.5] * " Emission across United States (1999 - 2008)"))
points(TotalCoalEmissionsPY, x = rownames(TotalCoalEmissionsPY), pch = 20, 
       col = "red")
lines(TotalCoalEmissionsPY, x = rownames(TotalCoalEmissionsPY), col = "blue")
axis(2)
axis(side = 1, at = seq(1999, 2008, by = 3))
box()

dev.off()