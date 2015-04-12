# Plot3#

#The data frame has records of PM2.5 emissions from the following sources:
  
unique(NEI$type)

# analyze how PM2.5 emissions from the above sources in specfic to Baltimore (1999 - 2008)

#Plotting emissions of PM2.5 from four different sources in Baltimore between 1999 - 2008

## Calculate total PM2.5 emissions for each type by year in Baltimore

Baltimore <- NEI[NEI$fips == "24510", ]
EtypePY <- aggregate(Emissions ~ type * year, data = Baltimore, 
                                    FUN = sum)

## Load libraries required for plot
suppressWarnings(library(ggplot2))
suppressWarnings(library(grid))
## Setup ggplot with data frame
q <- qplot(y = Emissions, x = year, data = EtypePY, color = type, 
           facets = . ~ type)

## Add layers and plotting
par("mar"=c(5.1, 4.5, 4.1, 2.1))
png(filename = "plot3.png", 
    width = 480, height = 480, 
    units = "px")

q + scale_x_continuous(breaks = seq(1999, 2008, 3)) + theme_bw() + geom_point(size = 3) + 
  geom_line() + labs(y = expression("Total " * PM[2.5] * " Emissions (in tons)")) + 
  labs(x = "Year") + labs(title = expression("Total " * PM[2.5] * " Emissions in Baltimore (1999 - 2008)")) + 
  theme(axis.text = element_text(size = 8), axis.title = element_text(size = 14), 
        panel.margin = unit(1, "lines"), plot.title = element_text(vjust = 2), 
        legend.title = element_text(size = 11)) + scale_colour_discrete(name = "Type")

dev.off()