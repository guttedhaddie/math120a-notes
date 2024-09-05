settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(90);

label("1",(0,0));
label("3",(1,0));
label("4",(2,0));
label("2",(3,0));

real d=0.17;

draw((d,0)--(1-d,0),blue,Arrow(TeXHead),BeginBar(5));
draw((1+d,0)--(2-d,0),blue,Arrow(TeXHead),BeginBar(5));
draw((2+d,0)--(3-d,0),blue,Arrow(TeXHead),BeginBar(5));
draw(((3,0.07)+1.3d*dir(150)){dir(150)}..((0,0.07)+1.1d*dir(30)){dir(30+180)},blue,Arrow(TeXHead),BeginBar(5));
