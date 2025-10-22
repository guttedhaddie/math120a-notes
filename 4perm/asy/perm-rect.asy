settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(120,65,IgnoreAspect);

draw(box((-2,-1),(2,1)));

label("1",(2,0),E);
label("2",(0,1),N);
label("3",(-2,0),W);
label("4",(0,-1),S);
