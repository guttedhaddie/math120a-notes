settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(100);

int f(int i,int j){return (i+j)%2;}

void bx(int i,int j,pen col){
	fill(box((i-0.5,-j-0.5),(i+0.5,-j+0.5)),col+opacity(0.4));
}


for(int i=0; i<=1; ++i){
	if(i%2==0){
		bx(i,-1,heavygreen);
		bx(-1,i,heavygreen);
	}
	if(i%2==1){
		bx(i,-1,blue);
		bx(-1,i,blue);
	}
	for(int j=0; j<=1; ++j){
		if(f(i,j)%2==0){bx(i,j,heavygreen);}
		if(f(i,j)%2==1){bx(i,j,blue);}
	}
}

label("$H$",(0,1));
label("$H$",(0,0));
label("$H$",(-1,0));
label("$H$",(1,-1));
label("$1\!+\!H$",(1,1));
label("$1\!+\!H$",(1,0));
label("$1\!+\!H$",(0,-1));
label("$1\!+\!H$",(-1,-1));

label("$\oplus$",(-1,1));
draw((-1.5,0.5)--(1.5,0.5),linewidth(1));
draw((-0.5,1.5)--(-0.5,-1.5),linewidth(1));