settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(160,170);

path c=box((-1,-1),(1,1));

real a=30;

draw(-2dir(a)--2dir(a),blue);
for(int i=1; i<=13; ++i){
	draw(-2dir(a)+0.1*i*dir(a+90)--2dir(a)+0.1*i*dir(a+90),green);
	draw(-2dir(a)-0.1*i*dir(a+90)--2dir(a)-0.1*i*dir(a+90),green);
	}
	
	draw(-2dir(a)+0.1*7*dir(a+90)--2dir(a)+0.1*7*dir(a+90),deepgreen);

	draw("$\mathbf{u}$",(0,0)--0.1*7*dir(a+90)-0.2dir(a),deepgreen+dashed,Arrow);

clip(c);

label("$W$",1.15dir(a),dir(a),blue);
label("$\mathbf{u}+W$",0.1*7*dir(a+90)+0.75dir(a),NE,deepgreen);



xaxis(-1.1,1.15,red);
yaxis(-1.1,1.15,red);