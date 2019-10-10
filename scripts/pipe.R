R = 30
D = 60
png("pipe.png",height=300,width = 700)
par(mar=c(4,4,0.1,4))
plot(NA, xlim=c(0,4*D),ylim=c(-20,2*R),asp=1,xaxt='n',yaxt='n',xlab="Y",ylab="X,Z")
rect(0,0,4*D,2*R,col=8)
axis(1,at=c(0,4*D))
axis(2,at=c(0,2*R))
axis(4,at=c(R/2,2*R-R/2))
a = seq(0,2*pi,len=200)
polygon(c(0,0,4*D,4*D),c(2*R,0,R/2,2*R-R/2),col=3,border=FALSE)
for (i in 0:4) {
  polygon(sin(a)*R+D*i,cos(a)*R+R,col=3,border=FALSE)
}
polygon(c(0,0,4*D,4*D),c(2*R,0,R/2,2*R-R/2))
for (i in 0:4) {
  lines(sin(a)*R+D*i,cos(a)*R+R)
}
rect(-60,-20,0,+80,col=0,border=FALSE)
rect(4*D,-20,4*D+60,+80,col=0,border=FALSE)
rect(0,0,4*D,2*R)
arrows(2*D+sin(1)*R,R+cos(1)*R,2*D-sin(1)*R,R-cos(1)*R,code=3,angle=15)
text(2*D,R,"60",adj=c(0,1.2))
rect(2,9,60,51,density = 10)
box()
legend("bottomleft",c("Simulation domain","Fluid flow","Initial placement of particles"), fill=c(16,3,1),density = c(NA,NA,30))
dev.off()
