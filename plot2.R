#
# plot 2
#
# > source('getData.R'); foo<-getData()
# > source('plot2.R'); plot2(foo)
#
plot2<-function(myd) {    
    plot( myd$posix, myd$Global_active_power, ylab='Global Active Power (kilowatts)', xlab='', type='l')
}
