plot4<-function() {
        fileUrl<-"http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        if(!file.exists("household_power_consumption.txt"))
                download.file(fileUrl, "power")
        unzip("power")
        data <- read.csv("household_power_consumption.txt", sep=";", nrows=2880, skip=66636)
        y<-paste(data[,1], x[,2], sep = " ")
        z<-x[,3:9]
        yorder<-strptime(y, format ="%d/%m/%Y %T")
        data<-cbind(yorder, z)
        png(file="plot4.png", width=480, height=480 )
        
}