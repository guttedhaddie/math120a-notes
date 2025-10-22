settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(90);

int n=6;

pair a=dir(0);

pair[] p={a};



for(int i=1; i<=n; ++i){p.push(rotate(360/n,(0,0))*p[i-1]);}

for(int i=0; i<n; ++i){dot(p[i]);
draw(p[i]--p[i+1]);
label(string(i+1),p[i],p[i]);}



