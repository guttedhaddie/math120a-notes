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

for(int i=0; i<n; ++i){
draw(p[i]--p[i+1],blue);}

for(int i=0; i<n/2; ++i){
draw(p[i]--p[i+3],dashed);}

draw(p[0]--p[2]--p[4]--cycle,red);

draw(1.07p[0]-0.15dir(90)--1.07p[0]+0.15dir(90),Arrows);
label("$\mu_0$",1.07p[0]-0.3dir(90));
draw("$\mu_2$",1.07p[1]-0.15dir(p[2]-p[0])--1.07p[1]+0.15dir(p[2]-p[0]),Arrows);
draw("$\mu_4$",1.07p[2]-0.15dir(p[4]-p[0])--1.07p[2]+0.15dir(p[4]-p[0]),Arrows);

draw("$\rho_2$",arc((0,0),1.3,-30,30),ArcArrow);
draw(Label("$\rho_4$",align=W),arc((0,0),1.3,210,150),ArcArrow);