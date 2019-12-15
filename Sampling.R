## This script plots a histogram of sample means from a known population and compares this
## distribution against the theoretical Standard Error of the Means distribution.

## You can play around with sample size (n) to see how the standard error distribution changes.

rm(list=ls())

var_ <- new.env()
n<-80           ## Sample n individuals at a time
p_mean<-89           ## Population mean
p_sd<-6              ## Population standard deviation
N<-500            ## Number of times the experiment (sampling) is replicated
xxlim <- c(p_mean-4*p_sd,p_mean+4*p_sd)
yylim <- c(0,sqrt(n)*0.5/p_sd)
q025 <- qnorm(0.025,p_mean,p_sd/sqrt(n))
q975 <- qnorm(0.025,p_mean,p_sd/sqrt(n),lower.tail=FALSE)

#pdf('SE.pdf')

for(i in 1:N)                                ## do the experiment N times
{
  smp<-rnorm(n,p_mean,p_sd)                 ## sample n data points from the population
  
  var_$x_bar<-c(var_$x_bar,mean(smp))         ## keep track of the mean (x_bar) from each sample
  
  
  #  print(paste(i," of ",N))
}
hist(var_$x_bar,probability=TRUE,col="red",xlim=xxlim,xlab="x / x_bar",main="",ylim=yylim)  # Plot a histogram of x_bar values
points(mean(smp),0,pch=19,cex=1.5,col='black')
curve(dnorm(x,p_mean,p_sd/sqrt(n)),lwd=3,add=TRUE)

text(p_mean+2*p_sd,0.875*yylim[2],labels=paste('sd/sqrt(n) = ',round(p_sd/sqrt(n),2),sep=''))
text(p_mean+2*p_sd,0.75*yylim[2],labels=paste('standard deviation of\nsample means = ',round(sd(var_$x_bar),2),sep='') )
text(p_mean+2*p_sd,0.65*yylim[2],labels=paste('Confidence interval = [',round(q025,2),',',round(q975,2),']',sep='') )

curve(dnorm(x,p_mean,p_sd),main="",ylab="",xlim=xxlim,xlab="X",col="blue",lwd=3,add=TRUE) ## Plot the sample

text(p_mean+2*p_sd,0.25*yylim[2],labels=paste('# of means drawn = ',i,sep=''))
text(p_mean+2*p_sd,0.175*yylim[2],labels=paste('Sample size (n) = ',n,sep=''))
points(smp,rep(0,n),pch=19,cex=1.5,col='purple')
abline(v= mean(smp),col='purple',lwd=4)
abline(v= q025,col='green',lwd=4)
abline(v= q975,col='green',lwd=4)

#legend("topleft",legend=c('Sample points','Population Distribution','Sample mean','Theoretical SE','Empirical SE'),

#lty=c(0,1,1,1,1,1,1),lwd=c(0,3,3,3,3,3,3),pch=c(16,NA,NA,NA,NA,NA,NA),col=c('purple','blue','purple','black','red'))

#dev.off()

