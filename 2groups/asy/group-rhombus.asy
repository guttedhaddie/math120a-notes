settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(160);

pair A=(2.3,0);
pair B=(0,1);
pair C=-A;
pair D=-B;

draw(A--B--C--D--cycle);

draw(A--C,dashed);
draw(B--D,dashed);

draw(Label("$a$",Relative(0.75)),arc((0,0),0.4B,-0.4B),ArcArrow);
draw("$b$",1.1A-0.3B--1.1A+0.3B,Arrows);
draw("$c$",1.1B+0.15A--1.1B-0.15A,Arrows);
