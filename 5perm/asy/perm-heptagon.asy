settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(140);

int n=7;

pair a=dir(0);

pair[] p={a};

for(int i=1; i<=n; ++i){p.push(rotate(360/n,(0,0))*p[i-1]);}

pair[] q={(p[0]+p[1])/2};

for(int i=1; i<=n+2; ++i){q.push(rotate(360/n,(0,0))*q[i-1]);}



path ar=1.15q[0]+0.2(p[0]-p[1])--1.15q[0]-0.2(p[0]-p[1]);

for(int i=0; i<n; ++i){
draw(p[i]--q[i+3],dashed);
draw(rotate(360*i/n,(0,0))*ar,Arrows);
label("$\mu_" + string(i+1) + "$",1.35q[i+3]);}


for(int i=0; i<n; ++i){
draw(p[i]--p[i+1],blue);
dot((string) string(i+1),p[i],p[i],blue);}