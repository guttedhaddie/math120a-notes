settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(120);

draw(Label("$S^1$",Relative(0.4)),unitcircle,heavygreen);

int n=6;

pair a=dir(0);

pair[] p={a};

for(int i=1; i<=n; ++i){p.push(rotate(360/n,(0,0))*p[i-1]);}

for(int i=0; i<n; ++i){
draw(p[i]--p[i+1],blue);}

draw(p[0]--p[2]--p[4]--cycle,red);

dot("$\zeta$",p[1],p[1],blue);
dot("$\zeta^2$",p[2],p[2],red);
dot("$\zeta^3$",p[3],p[3],blue);
dot("$\zeta^4$",p[4],p[4],red);
dot("$\zeta^5$",p[5],p[5],blue);
dot("$1$",p[6],p[6],red);
