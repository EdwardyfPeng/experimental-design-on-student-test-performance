# Estimate sigma-square
pilot <- c(14/15, 1, 1, 14/15, 12/15, 1, 14.5/15, 1, 14/15)
var(pilot)

# power curve for factor layout
nseq <- 1:10
groupmeans <- c(1/15, -1/15)
sigmasquare <- var(pilot)
power <- sapply(nseq,function(n){
    nperlevel <- n * 3 * 2
    ncpseq <- nperlevel * sum(groupmeans^2)/sigmasquare
    dfDenom <- 3 * 2 * 2 * (n-1)
    fcutoff <- qf(1-0.05,df=1,df2=dfDenom)
    1-pf(fcutoff,df1=1,df2=dfDenom,ncp=ncpseq)
})
plot(nseq,power,log="x",type="b",
     xlab="n(# of replications for each treatment combination)",
     main="Power Curve for factor layout")
abline(h=c(0.999, 1), v = c(3, 4), lty=2)

# power curve for factor order
groupmeans <- c(1/15, -2/15, 1/15)
power <- sapply(nseq,function(n){
    nperlevel <- n * 2 * 2
    ncpseq <- nperlevel * sum(groupmeans^2)/sigmasquare
    dfDenom <- 3 * 2 * 2 * (n-1)
    fcutoff <- qf(1-0.05,df=2,df2=dfDenom)
    1-pf(fcutoff,df1=2,df2=dfDenom,ncp=ncpseq)
})
plot(nseq,power,log="x",type="b",
     xlab="n(# of replications for each treatment combination)",
     main="Power Curve for factor order")
abline(h=c(0.999, 1),v = c(3, 4), lty=2)

# power curve for factor timer
groupmeans <- c(1/15, -1/15)
power <- sapply(nseq,function(n){
    nperlevel <- n * 3 * 2
    ncpseq <- nperlevel * sum(groupmeans^2)/sigmasquare
    dfDenom <- 3 * 2 * 2 * (n-1)
    fcutoff <- qf(1-0.05,df=1,df2=dfDenom)
    1-pf(fcutoff,df1=1,df2=dfDenom,ncp=ncpseq)
})
plot(nseq,power,log="x",type="b",
     xlab="n(# of replications for each treatment combination)",
     main="Power Curve for factor timer")
abline(h=c(0.999, 1),v = c(3, 4), lty=2)

