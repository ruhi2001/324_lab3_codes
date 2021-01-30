s = poly(0,"s")
//for all the case
G11 = syslin("c",(1/(s^2 + 1)))
G12 = syslin("c",(1/(s^2 + s + 1)))
G13 = syslin("c",(1/(s^2 + 3*s + 1)))
t = [0:0.01:16]
y1 = csim("step",t,G11)
y2 = csim("step",t,G12)
y3 = csim("step",t,G13)
plot(t',[y1' y2' y3'])
xlabel("t")
ylabel("y")
title("step response")
legend("undamped","underdamped","overdamped")

//for underdamped case
G12 = syslin("c",(1/(s^2 + s + 1)))
t = [0:0.01:16]
y2 = csim("step",t,G12)
plot(t',y2')

xpts= [0 15]
ypts = [0.1 0.1]
plot(xpts,ypts)

xpts= [0 15]
ypts = [0.9 0.9]
plot(xpts,ypts)

xpts= [0 15]
ypts = [0.98 0.98]
plot(xpts,ypts)

xpts= [0 15]
ypts = [0.5 0.5]
plot(xpts,ypts)

xlabel("t")
ylabel("y")
title("step response")
legend("underdamped")

//overdamped case
s = poly(0,"s")
G13 = syslin("c",(1/(s^2 + 3*s + 1)))
t = [0:0.01:20]
y3 = csim("step",t,G13)
plot(t',y3')
xpts= [0 15]
ypts = [0.1 0.1]
plot(xpts,ypts)

xpts= [0 15]
ypts = [0.9 0.9]
plot(xpts,ypts)

xpts= [0 15]
ypts = [0.98 0.98]
plot(xpts,ypts)

xpts= [0 15]
ypts = [0.5 0.5]
plot(xpts,ypts)

xlabel("t")
ylabel("y")
title("step response")
legend("overdamped")

//part b
s = poly(0,"s")
for w = 1:2:9
    G14 = syslin("c",((w^2)/(s^2 + w*s + w^2)))
    t = [0:0.0001:14]
    y = csim("step",t,G14)
    plot(t',y')
end

xlabel("t")
ylabel("y")
title("step responses")
legend("Underdamped system with damping ratio = 0.5")
