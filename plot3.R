plot3<- function() {
        fileUrl<-"http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        if(!file.exists("household_power_consumption.txt"))
                download.file(fileUrl, "power")
        unzip("power")
        data <- read.csv("household_power_consumption.txt", sep=";", nrows=2880, skip=66636)
        plot(data[,1], data[,7], type="n", xlab="", ylab="Energy sub metering")
        lines(data[,1], data[,7])
        lines(data[,1], data[,8], col="red")
        lines(data[,1], data[,9], col="blue")
        legend("topright", col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1, 1, 1))
        dev.off()
}
