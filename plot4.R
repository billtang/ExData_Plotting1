#
# plot 4
#
# > source('getData.R'); foo<-getData()
# > source('plot4.R'); plot4(foo)
#
plot4<-function(myd) {
    par(mfrow=c(2,2))
    source('plot1.R'); plot1(foo)
    plot( myd$posix, myd$Voltage, ylab='Voltage', xlab='datetime', type='l')
    source('plot3.R'); plot3(foo)
    plot( myd$posix, myd$Global_reactive_power, ylab='Global_reactive_power', xlab='datetime', type='l')
}
