#
# plot 1
#
# > source('getData.R'); foo<-getData()
# > source('plot1.R'); plot1(foo)
#
plot1<-function(myd) {
    hist(myd$Global_active_power,col='red',xlab='Global Active Power (kilowatts)',main='Global Active Power')
}

