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
label("4",(1,0));
label("2",(2,0));
label("3",(3,0));

real d=0.17;

draw(((0,-0.07)+1.3d*dir(-30)){dir(-30)}..((1,-0.07)+1.1d*dir(210)){dir(30)},red,Arrow(TeXHead),BeginBar(5));
draw(((1,0.07)+1.3d*dir(150)){dir(150)}..((0,0.07)+1.1d*dir(30)){dir(30+180)},red,Arrow(TeXHead),BeginBar(5));
draw(((2,0)+1.3d*dir(45)){dir(45)}..(2,0.6)..((2,0)+1.3d*dir(135)){dir(-45)},red,Arrow(TeXHead),BeginBar(5));
draw(((3,0)+1.3d*dir(45)){dir(45)}..(3,0.6)..((3,0)+1.3d*dir(135)){dir(-45)},red,Arrow(TeXHead),BeginBar(5));
