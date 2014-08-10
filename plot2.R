plot2<-function() {
        fileUrl<-"http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        if(!file.exists("household_power_consumption.txt"))
                download.file(fileUrl, "power")
        unzip("power")
        data <- read.csv("household_power_consumption.txt", sep=";", nrows=2880, skip=66636)
        y<-paste(data[,1], data[,2], sep = " ")
        z<-data[,3:9]
        yorder<-strptime(y, format ="%d/%m/%Y %T")
        data<-cbind(yorder, z)
        png(file="plot2.png", width=480, height=480 )
        plot(data[,1], data[,2], type="n", xlab="", ylab="Global Active Power (kilowatts)")
        lines(data[,1], data[,2])
        dev.off()
}