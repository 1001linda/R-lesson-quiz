#1

x.pt = c(1,2,2,3,3,4,4,5)
y.pt = c(0,0,1/3,1/3,1/2,1/2,1,1)
plot(x.pt,y.pt,type="p",ylab="",xlab="",bty="n",axes=F,xlim=c(0,5),ylim=c(0,1))

axis(1, at=2:4, labels=c("x1","x2","x3"))
axis(2, at=c(1/3, 1/2, 1),
labels=c("P(X<=x1)", "P(X<=x2)", "P(X<=x3)"))
mtext("P(X<=x2)",side=2,at=1/2)


segments(1,0,2,0)
segments(2,1/3,3,1/3)
segments(3,1/2,4,1/2)
segments(4,1,5,1)
segments(2,0,2,1/3,lty=2)
segments(3,1/3,3,1/2,lty=2)
segments(4,1/2,4,1,lty=2)

#2

f = function(x){
  y = (1/15)*exp(-x/15)
  return(y)
}

x = seq(0,30)
y = f(x)
plot(x,y,type="l", ylab="", xlab="Loading Time", bty="n"
, lwd=5,xlim=c(0,35))

x1 = c(0,seq(0,6),6)
y1 = c(0,f(seq(0,6)),0)
polygon(x1,y1,col="gray")

x2 = c(6,seq(6,18),18)
y2 = c(0,f(seq(6,18)),0)
polygon(x2,y2,col=2)

x3 = c(18,seq(18,30),30)
y3 = c(0,f(seq(18,30)),0)
polygon(x3,y3,col="gray", border=NA)

mtext("x",side=1,at=36,cex=2)
mtext("f(x)", side=3, at=0, cex=2)

segments(3,0.06,7,0.06)
arrows(3,0.06,3,0.04)
text(8,0.06,paste("P(",expression(x<=6),")"))
segments(12,0.04,15,0.04)
arrows(12,0.04,12,0.02)
text(24,0.04,paste("P(",expression(6<=x),expression(x<=18),")"))







