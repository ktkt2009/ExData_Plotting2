#Plot4#
# Analysing Emission of coal combustion related sources in United States (1999-2008)
## Find all the coal combustion related sources from 'SCC'

CoalCombustion <- SCC[SCC$EI.Sector == "Fuel Comb - Comm/Institutional - Coal", ]["SCC"]

## Subset emissions due to coal combustion sources from 'NEI'
CoalEmission <- NEI[NEI$SCC %in% CoalCombustion$SCC, ]

## Calculate the emissions due to coal each year across United States
ToalCoalEmissionsPY <- tapply(CoalEmission$Emissions, CoalEmission$year, sum)

## Create the plot
png(filename = "plot4.png", 
    width = 480, height = 480, 
    units = "px")

plot(ToalCoalEmissionsPY, x = rownames(ToalCoalEmissionsPY), type = "n", 
     axes = FALSE, ylab = expression("Coal Related PM"[2.5] * " Emission (in tons)"), 
     xlab = "Year", main = expression("Coal Related PM"[2.5] * " Emission across United States (1999 - 2008)"))
points(ToalCoalEmissionsPY, x = rownames(ToalCoalEmissionsPY), pch = 20, 
       col = "red")
lines(ToalCoalEmissionsPY, x = rownames(ToalCoalEmissionsPY), col = "black")
axis(2)
axis(side = 1, at = seq(1999, 2008, by = 3))
box()

dev.off()


