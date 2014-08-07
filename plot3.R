plot3<- function() {
        fileUrl<-"http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        if(!file.exists("household_power_consumption.txt"))
                download.file(fileUrl, "power")
        unzip("power")
        data <- read.csv("household_power_consumption.txt", sep=";", nrows=2880, skip=66636)
        y<-paste(data[,1], x[,2], sep = " ")
        z<-x[,3:9]
        yorder<-strptime(y, format ="%d/%m/%Y %T")
        data<-cbind(yorder, z)
        png(file="plot3.png", width=480, height=480 )
        plot(data[,1], data[,6], type="n", xlab="", ylab="Energy sub metering")
        lines(data[,1], data[,6])
        lines(data[,1], data[,7], col="red")
        lines(data[,1], data[,8], col="blue")
        legend("topright", col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1, 1, 1))
        dev.off()
}
