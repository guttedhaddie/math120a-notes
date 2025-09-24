settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(160);
//draw(unitcircle,heavygreen);

int n=6;

pair a=dir(0);

pair[] p={a};

for(int i=1; i<=n; ++i){p.push(rotate(360/n,(0,0))*p[i-1]);}

pair[] q={(p[0]+p[1])/2};
for(int i=1; i<=n; ++i){q.push(rotate(360/n,(0,0))*q[i-1]);}

for(int i=0; i<n; ++i){
draw(p[i]--p[i+1],blue);}

for(int i=0; i<n/2; ++i){
draw(q[i]--q[i+3],dashed);}

draw(q[1]--q[3]--q[5]--cycle,red);

draw("$\mu_2$",1.07q[0]-0.15dir(p[1]-p[0])--1.07q[0]+0.15dir(p[1]-p[0]),Arrows);
draw("$\mu_4$",1.07q[1]+0.15E--1.07q[1]-0.15E,Arrows);
draw("$\mu_6$",1.07q[2]+0.15dir(p[2]-p[3])--1.07q[2]-0.15dir(p[2]-p[3]),Arrows);

draw("$\rho_2$",arc(p[0],0.6,-60,60),W,ArcArrow);
draw(Label("$\rho_4$",align=W),arc(p[3],0.6,240,120),E,ArcArrow);