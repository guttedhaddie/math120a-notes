settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(0,65);

real X=2.5;
real Y=1;

draw(box((-X,-Y),(X,Y)),linewidth(0.8));

draw((0,-Y)--(0,Y),dashed+blue);
draw((-X,0)--(X,0),dashed+red);

draw(Label("$a$",Relative(0.5),align=W),arc((-1.07X,0),0.3,90,270),heavygreen,ArcArrow);
draw("$c$",(-0.3,-1.17Y)--(0.3,-1.17Y),blue,Arrows);
draw("$b$",(1.1X,-0.3)--(1.1X,0.3),red,Arrows);
