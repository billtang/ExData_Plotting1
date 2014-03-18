#
# read data and return as data frame for this project
#
# > source('getData.R')
# > foo<-getData()
#
getData<-function() {
    myurl<-'http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
    mytemp<-tempfile()
    download.file(myurl,mytemp)
    unzip(mytemp, list=T)
    myfilename<-unzip(mytemp)
    mydata<-read.csv(myfilename,sep=';',colClasses=c('character'))
    #names(mydata); dim(mydata)
    #[1] 2075259 9
    # use Y for 4 digit year
    mydata$Date<-as.Date(mydata$Date,'%d/%m/%Y') 
    ###mydata$Time<-as.Date(mydata$Time,'%h:%m:%s')
    myd<-subset(mydata,mydata$Date>=as.Date('2007-02-01') &mydata$Date<=as.Date('2007-02-02'))
    mynames<-names(myd)
    # "Date", "Time", "Global_active_power", "Global_reactive_power"
    # "Voltage", "Global_intensity",
    # "Sub_metering_1",  "Sub_metering_2", "Sub_metering_3"
    for (i in mynames){if (i!='Date' & i!='Time'){myd[i] = as.numeric(unlist(myd[i]))}}
    #dim(myd)
    #[1] 2880 9
    myposix<-as.POSIXct(paste(myd$Date, myd$Time))
    myd$posix<-myposix
    myd
}
