#README#

#Introduction#

Fine particulate matter (PM2.5) is an ambient air pollutant for which there is strong evidence that it is harmful to human health. In the United States, the Environmental Protection Agency (EPA) is tasked with setting national ambient air quality standards for fine PM and for tracking the emissions of this pollutant into the atmosphere. Approximatly every 3 years, the EPA releases its database on emissions of PM2.5. This database is known as the National Emissions Inventory (NEI). You can read more information about the NEI at the EPA National Emissions Inventory web site.

For each year and for each type of PM source, the NEI records how many tons of PM2.5 were emitted from that source over the course of the entire year. The data that you will use for this assignment are for 1999, 2002, 2005, and 2008. Data

The data for this assignment are available from the course web site as a single zip file:

. Data for Peer Assessment [29Mb]

The downloaded zip file "exdat_data_NEI_data" contain two rds files namely " summarySCC_PM25.rds" and "Source_Classification_Code.rds".

"summarySCC_PM25.rds" is a data frame that contains the number of tons of PM2.5 emitted from a specific type of source for the years 1999,2002, 2005, and 2008.

"Source_Classification_Code.rds" provides a mapping from the SCC digit strings in the "summarySCC_PM25.rds" table to the actual name of the PM2.5 source.

The overall goal of this assignment is to explore the National Emissions Inventory database and see what it say about fine particulate matter pollution in the United states over the 10-year period 1999–2008. I might use base ploting system, ggplot2 and grid R packages in my data analysis.

This assignment demands 6 PNG plots that portray Emission level changes over the period of 1999 to 2008 in the United States.

#Instruction#

1.To make a plot showing the total PM2.5 emission from all sources for each       of the years 1999, 2002, 2005, and 2008.

2.Useing the base plotting system to make a plot of total emissions from PM2.5 decreased in the Baltimore City from 1999 to 2008.

3.To create a plot identifying which type of sources having increasing or decreasing Emissions for Baltimore City in the period of 1999-2008 by using ggplot2.
        
4.To make a plot showing how have emissions from coal combustion-related sources changed from 1999–2008 across United States.

5.To produce a plot how have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City.

6.Finally,to comparision plot of emissions control from motor vehicle sources in Baltimore City with Califonia.

*Note*  
The R codes and PNG plots are pushed to the current Repo for peer assessment of the course project.
  
 
 #*Findings*#
 
   Plot1- There is a considerable decrease in total emission of PM 2.5 in United States during 1999-2008.
	
   Plot2-shows overall decrease in total emissions of PM2.5 in Baltimore between 1999 to 2008, 
		  though there was an intermittent increase in emission between 2002 and 2005.

   Plot3- Though the plot shows an overall decrease in PM2.5 emissions for all the four sources between 1999 - 2008,
	   it was discovered that 'non-point' types emission is recognizable gap between other type of Emission.
   
   Plot4-Across the US, we see a steep decline in emissions from coal combustion sources between 1999 - 2008.

   Plot5-There is a steep decrease in emissions between 1999 - 2002, followed by a slight decrease between 2002 - 2005          and a further decrease from 2005 - 2008.
   
   Plot6- There are huge difference between Baltimore and Los Angeles country in emission control of motor vehicles             sources. The biggest point, in 2005 Emission values of 4101 and 130 are from Los Angeles and Baltimore    	          respectively.
