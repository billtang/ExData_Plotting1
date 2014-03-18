#
# plot 3
#
# > source('getData.R'); foo<-getData()
# > source('plot3.R'); plot3(foo)
#
plot3<-function(myd) {
    ymax=max(myd$Sub_metering_1,myd$Sub_metering_2,myd$Sub_metering_3)
    ymin=min(myd$Sub_metering_1,myd$Sub_metering_2,myd$Sub_metering_3)
    #38 0
    plot( myd$posix, myd$Sub_metering_1, type='l', ylim=c(ymin,ymax),ylab='Energy sub meeting',xlab='')
    lines(myd$posix, myd$Sub_metering_2, col='red')
    lines(myd$posix, myd$Sub_metering_3, col='blue')
    legend('topright',c( 'Sub_metering_1','Sub_metering_2','Sub_metering_3'),lty=1,col=c('black','red','blue'))
}
