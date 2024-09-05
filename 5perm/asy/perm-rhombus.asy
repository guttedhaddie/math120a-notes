settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(140);

pair A=(2.3,0);
pair B=(0,1);
pair C=-A;
pair D=-B;

draw(A--B--C--D--cycle);

draw(A--C,dashed);
draw(B--D,dashed);

dot("1",A,E);
dot("2",B,N);
dot("3",C,W);
dot("4",D,S);
