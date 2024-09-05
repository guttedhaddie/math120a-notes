settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(135);

pair z=2dir(60);

dot("$z=1+\sqrt 3i=2e^{\frac{i\pi}3}$",z,N);
draw(Label("$|z|=2$",Relative(0.6)),(0,0)--z);
draw("$\arg z=\frac\pi 3$",arc((0,0),0.5,0,60),ArcArrow);

xaxis(0,2.2,red,RightTicks(new real[]{-1,0,1,2}));
yaxis(0,2.2,red,LeftTicks(new real[]{0}));
ytick(Label("$i$",align=W),1,W,red);
//ytick(Label("$-i$",align=W),-1,W,red);
ytick(Label("$2i$",align=W),2,W,red);