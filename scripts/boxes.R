mybox = function(dx=0,fx=n,n=20,m=5) {
  par(mar=c(0,0,0,0))
  plot(NA,xlim=c(0,n),ylim=c(-3,m),bty='n',axes=FALSE,asp=1)
  rect(dx,0,fx,m,col=8)
  segments(0,0:m,n,0:m)
  segments(0:n,0,0:n,m)
}
brace = function(x1,y1,x2,y2,len=1,text,...){
  a=c(1,2,3,48,50)    # set flexion point for spline
  b=c(0,.2,.28,.7,.8) # set depth for spline flexion point
  curve = spline(a, b, n = 50, method = "natural")$y / 0.8
  curve = c(curve,rev(curve))
  i = which.max(curve)
  curve = cbind(seq(0,1,len=length(curve)),curve,1)
  v = c(x2-x1,y2-y1)
  v = rbind(v,c(v[2],-v[1])/sqrt(sum(v**2))*len,c(x1,y1))
  v = curve %*% v
  lines(v,asp=1)
  text(v[i,1],v[i,2],labels = text,...)
}

px = 1
py = 0.3

png("box_dx.png",width=300,height=130,res=200)
mybox(dx=4)
brace(0,0,4,0,text="dx",adj=c(0.5,1),cex=0.5)
dev.off()

png("box_mdx.png",width=300,height=130,res=200)
mybox(dx=20-4)
brace(20-4,0,20,0,text="-dx",adj=c(0.5,1),cex=0.5)
dev.off()

png("box_nx.png",width=300,height=130,res=200)
mybox(dx=4,fx=4+10)
brace(4,0,4+10,0,text="nx",adj=c(0.5,1),cex=0.5)
brace(0,0,4,0,text="dx",adj=c(0.5,1),cex=0.5)
dev.off()

png("box_fx.png",width=300,height=130,res=200)
mybox(dx=4,fx=10)
brace(0,0,10,0,text="fx",adj=c(0.5,1),cex=0.5)
dev.off()

