//part a
s = poly(0,"s")
H = syslin("c",9/(s^2 + 2*s + 9))
[z,p,k]=tf2zp(H)
disp(p,"Poles:")
H1 = syslin("c",3*(s+3)/(s^2 + 2*s + 9))//additional zero at -3
H2 = syslin("c",0.75*(s+12)/(s^2 + 2*s + 9))//additional zero at -12
t = [0:0.01:8]
y1 = csim("step",t,H)
y2 = csim("step",t,H1)
y3 = csim("step",t,H2)
plot(t',[y1' y2' y3'])
legend("original system","when a zero is added at -3","when a zero is added at -12")

xpts= [0 8]
ypts = [0.1 0.1]
plot(xpts,ypts)

xpts= [0 8]
ypts = [0.9 0.9]
plot(xpts,ypts)

xlabel("t")
ylabel("y")
title("step responses")

//partb
s = poly(0,"s")
H = syslin("c",9/(s^2 + 2*s + 9))
[z,p,k]=tf2zp(H)
disp(p,"Poles:")
H1 = syslin("c",4.5/((s+0.5)*(s^2 + 2*s + 9)))//additional pole at -0.5
H2 = syslin("c",135/((s+15)*(s^2 + 2*s + 9)))//additional pole at -15
t = [0:0.01:8]
y =  csim("step",t,H)
y1 = csim("step",t,H1)
y2 = csim("step",t,H2)
plot(t',[y' y1' y2'])
legend("original","when a pole is added at -0.5","when a zero is added at -15")

xpts= [0 8]
ypts = [0.1 0.1]
plot(xpts,ypts)

xpts= [0 8]
ypts = [0.9 0.9]
plot(xpts,ypts)

xlabel("t")
ylabel("y")
title("step responses")



