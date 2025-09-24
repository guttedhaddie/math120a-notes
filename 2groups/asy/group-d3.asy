settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(160);

pair a=dir(210);
pair b=dir(330);
pair c=dir(90);
pair A=(b+c)/2;
pair B=(a+c)/2;
pair C=(a+b)/2;

draw(a--b--c--cycle);

dot("$1$",a,a);
dot("$2$",b,b);
dot("$3$",c,c);

draw(C--c,dashed);
draw(B--b,dashed);
draw(A--a,dashed);

draw("$\mu_1$",1.2A+0.1(b-c)--1.2A+0.1(c-b),red,Arrows);
draw("$\mu_2$",1.2B-0.1(a-c)--1.2B-0.1(c-a),Arrows);
draw("$\mu_3$",1.2C-0.1(b-a)--1.2C-0.1(a-b),heavygreen,Arrows);

draw("$\rho_1$",arc(0.45dir(30),0.5,-30,90),ArcArrow);
draw(Label("$\rho_2$",align=B),arc(0.4dir(150),0.5,90+120,90),blue,ArcArrow);