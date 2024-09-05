settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(110);

real th=0.9;

draw(Label("$S^1$",Relative(0.36)),unitcircle,heavygreen);
//draw(unitcircle,heavygreen);

dot("$e^{i\theta}$",expi(th),NE,blue);
draw("1",expi(th)--(0,0),blue);
draw(expi(th)--(cos(th),0)--(0,0),dashed+blue);
draw(shift((cos(th)-0.1,0))*box((0,0),(0.1,0.1)),blue);
draw("$\theta$",arc((0,0),0.25,0,th*180/pi),blue,ArcArrow);

xaxis(-1.2,1.2,red,RightTicks(new real[]{-1,1}));
yaxis(-1.2,1.2,red);
ytick(Label("$i$",align=W),1,W,red);
ytick(Label("$-i$",align=W),-1,W,red);