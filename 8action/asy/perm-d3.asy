settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(110);

int n=3;

pair a=dir(0);

pair[] p={a};

for(int i=1; i<=n; ++i){p.push(rotate(360/n,(0,0))*p[i-1]);}

pair[] q={(p[0]+p[1])/2};

for(int i=1; i<=n+1; ++i){q.push(rotate(360/n,(0,0))*q[i-1]);}

for(int i=0; i<n; ++i){
draw(p[i]--p[i+1],blue);
label(string(i+1),p[i],p[i]);}

for(int i=0; i<n; ++i){
draw(p[i]--q[i+1],dashed);}

