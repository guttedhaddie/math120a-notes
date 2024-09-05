settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(0,75);


draw(box((-2,-0.9),(2,0.9)),purple);
draw((-2,0)--(0,0.9)--(2,0)--(0,-0.9)--cycle,brown);

draw((0,-1)--(0,1),dashed+blue);
draw((-2.1,0)--(2.1,0),dashed+red);

draw(Label("$a$",Relative(0.5),align=W),arc((-2.1,0),0.3,90,270),heavygreen,ArcArrow);
draw("$c$",(0.3,1.2)--(-0.3,1.2),blue,Arrows);
draw("$b$",(2.2,-0.3)--(2.2,0.3),red,Arrows);
