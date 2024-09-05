settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(150);

int n=3;

pair a=dir(0);

pair[] p={a};



for(int i=1; i<=n; ++i){p.push(rotate(360/n,(0,0))*p[i-1]);}

for(int i=0; i<n; ++i){dot(p[i],blue);
draw(p[i]--p[i+1],blue+dashed);}

label("$\zeta$",p[1],p[1]);
label("$\zeta^2$",p[2],p[2]);

xaxis(-1.2,1.2,red,RightTicks(new real[]{-1,1}));
yaxis(-1.2,1.2,red);
ytick(Label("$i$",align=W),1,W,red);
ytick(Label("$-i$",align=W),-1,W,red);