plot1<-function() {
        fileUrl<-"http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        if(!file.exists("household_power_consumption.txt"))
                download.file(fileUrl, "power")
                unzip("power")
        data <- read.csv("household_power_consumption.txt", sep=";", nrows=2880, skip=66636)
        png(file="plot1.png", width=480, height=480 )
        hist(data[,3], col="red", xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power")        
        dev.off()
}