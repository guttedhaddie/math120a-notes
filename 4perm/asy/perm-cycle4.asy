settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(130,0);

label("\smash[b]{$a_1$}",(0,0));
label("\smash[b]{$a_2$}",(1,0));
label("\smash[b]{$a_3$}",(2,0));
label("$\cdots$",(3.2,0));
label("\smash[b]{$a_k$}",(4.4,0));

label("all other $x$",(2.3,-1),W);

real d=0.3;


draw((d,0)--(1-d,0),Arrow(TeXHead),BeginBar(5));
draw((1+d,0)--(2-d,0),Arrow(TeXHead),BeginBar(5));
draw((2+d,0)--(3-d,0),Arrow(TeXHead),BeginBar(5));
draw((3.4+d,0)--(4.4-d,0),Arrow(TeXHead),BeginBar(5));

draw(((4.4,0.03)+1.1d*dir(155)){dir(155)}..((0,0.03)+1.0d*dir(25)){dir(25+180)},Arrow(TeXHead),BeginBar(4));
draw(((2,-1.05)+1.0d*dir(-40)){dir(-40)}..(2.55,-1.05)..((2,-1.05)+1.0d*dir(40)){dir(40+180)},Arrow(TeXHead),BeginBar(4));