settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(120);

int f(int i,int j){return (i+j)%6;}

void bx(int i,int j,pen col){
	fill(box((i-0.5,-j-0.5),(i+0.5,-j+0.5)),col+opacity(0.4));
}


for(int i=0; i<=5; ++i){
	label("$"+(string) i+"$",(i,1));
	if(i%2==0){
		bx(i,-1,heavygreen);
		bx(-1,i,heavygreen);
	}
	if(i%2==1){
		bx(i,-1,blue);
		bx(-1,i,blue);
	}
	label("$"+(string) i+"$",(-1,-i));
	for(int j=0; j<=5; ++j){
		label("$"+(string) f(i,j)+"$",(i,-j));
		if(f(i,j)%2==0){bx(i,j,heavygreen);}
		if(f(i,j)%2==1){bx(i,j,blue);}
	}
}

label("$+_6$",(-1,1),red);
draw((-1.5,0.5)--(5.5,0.5),linewidth(1));
draw((-0.5,1.5)--(-0.5,-5.5),linewidth(1));