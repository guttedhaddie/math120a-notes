settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
");

include graph;

size(180);

picture P;

draw(P,dir(-30)--dir(90),red+linewidth(5));
draw(P,dir(90)--dir(210),green+linewidth(5));
draw(P,dir(210)--dir(-30),purple+linewidth(5));
dotfactor=15;
dot(P,0.975*dir(-30));
dot(P,0.975*dir(90));
dot(P,0.975*dir(210));

add(shift((-1.1,0))*P);

add(shift((1.1,0))*rotate(120,(0,0))*P);

draw("$\rho_1$",(-0.5,0.3){dir(20)}..(0.5,0.3),N,Arrow);
