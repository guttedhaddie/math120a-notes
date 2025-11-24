settings.tex="pdflatex";

//OpenGL (default) - no opacity

//PNG - no opacity
//if(!settings.multipleView) settings.batchView=false;
//settings.render=4;settings.outformat="png";

//HTML - opacity fine
settings.outformat="html";

//PDF
//if(!settings.multipleView) settings.batchView=false;
//settings.render=0;settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
");

include graph;
import graph3;
import three;

size3(80);
//currentprojection=perspective(10,2,2.5);


currentprojection=orthographic(5,2,1,center=true);

size(5cm);
size3(3cm,5cm,8cm);

draw(shift((-1,-1,-1))*scale3(2)*unitbox);

//dot((0,0,0));

triple a1=X+Y+Z;
triple a2=-a1;
triple b1=X-Y+Z;
triple b2=-b1;
triple c1=X-Y-Z;
triple c2=-c1;
triple d1=X+Y-Z;
triple d2=-d1;

draw(a1--a2,dashed+red);
draw(b1--b2,dashed+blue);
draw(c1--c2,dashed+heavygreen);
draw(d1--d2,dashed+magenta);

dot("$a_1$",a1,a1,red);
dot("$a_2$",a2,a2,red);
dot("$b_1$",b1,b1,blue);
dot("$b_2$",b2,b2,blue);
dot("$c_1$",c1,c1,heavygreen);
dot("$c_2$",c2,c2,heavygreen);
dot("$d_1$",d1,d1,magenta);
dot("$d_2$",d2,d2,magenta);


light Headlamp=light(specularfactor=1,dir(20,100));

currentlight=Headlamp;