source('getData.R')
source('plot1.R')
source('plot2.R')
source('plot3.R')
source('plot4.R')
mydata<-getData()
jpeg('plot1.jpg');plot1(mydata);dev.off()
jpeg('plot2.jpg');plot2(mydata);dev.off()
jpeg('plot3.jpg');plot2(mydata);dev.off()
jpeg('plot4.jpg');plot2(mydata);dev.off()


