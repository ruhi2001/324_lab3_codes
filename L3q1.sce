s = poly(0,"s")
//part a
for a = -1:0.01:1
    G = (s+5+a)/(s^2 + 11*s + 30)
    sys = syslin("c",G)
    t = 0:0.01:5
    y = csim("step",t,sys)
    plot2d(t,y)
end
//when a=0
s = poly(0,"s")
G1 = (s+5)/(s^2 + 11*s + 30)
H1 = simp(G1)
sys1 = syslin("c",H1)
t = 0:0.01:5
y1 = csim("step",t,sys1)
plot2d(t,y1)

//part b
s=poly(0,"s")
G2 = syslin("c",(1/(s^2 - s -6)))
t=0:0.01:10
plot2d(t,csim("step",t,G2))
//new transfer function
s=poly(0,"s")
G3 = syslin("c",1/(s+2))
t=0:0.01:10
plot2d(t,csim("step",t,G3))

//when we shift the zero
s = poly(0,"s")
for a = -3:0.1:4
    G4 = syslin("c",(s-3-a)/(s^2 - s -6 ))
    t = 0:0.01:5
    plot2d(t,csim("step",t,G4)) 
end
