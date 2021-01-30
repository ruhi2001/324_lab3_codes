//part a
s = poly(0,"s")
H = syslin("c",85/(s^3+7*s^2+27*s+85))
[z,p,k]=tf2zp(H)
disp(p,"Poles:")
H1 = syslin("c",17/(s^2+2*s+17))
t = [0:0.01:8]
y = csim("step",t,H)
y1 = csim("step",t,H1)
plot(t',[y' y1'])
legend("orginal system","second order approximation")
xlabel("t")
ylabel("y")
title("step responses")

//part b
s = poly(0,"s")
G = syslin("c",((s+0.01)/(s^3+(101/50)*s^2+(126/25)*s+0.1)))
[z,p,k]=tf2zp(G)
disp(p,"Poles:")
G1 = syslin("c",1/(s^2+2*s+5))
t = [0:0.01:8]
y = csim("step",t,G)
y1 = csim("step",t,G1)
plot(t',[y' y1'])
legend("orginal system","second order approximation")
xlabel("t")
ylabel("y")
title("step responses")

