settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(220);

//draw(scale(7)*unitcircle);

void eclass(int m, int n, real d, real[] l){
	picture pp;
	label(Label("$["+(string) m+"]$"),dir(360*m/n));
	label(pp,scale(0.7)*Label("$=\{\ldots,"+(string) l[0]+","+(string) l[1]+","+(string) l[2]+","+(string) l[3]+",\ldots\}$"),(1+d,0),E);
	add(rotate(360*m/n,(0,0))*pp);
}

eclass(0,5,0.25,new real[]{-5,0,5,10});
eclass(1,5,0.25,new real[]{-9,-4,1,6});
eclass(2,5,0.25,new real[]{-8,-3,2,7});
eclass(3,5,0.25,new real[]{-7,-2,3,8});
eclass(4,5,0.25,new real[]{-6,-1,4,9});

draw(scale(0.7)*"$+1$",4.05*dir(360*0/5+5){dir(360*0/5+90)}..4.88*dir(360*1/5-5){dir(360*1/5+90)},ArcArrow);
draw(scale(0.7)*"$+1$",4.88*dir(360*1/5+5){dir(360*1/5+90)}..4.9*dir(360*2/5-5){dir(360*2/5+90)},ArcArrow);
draw(scale(0.7)*"$+1$",4.9*dir(360*2/5+5){dir(360*2/5+90)}..4.88*dir(360*3/5-5){dir(360*3/5+90)},ArcArrow);
draw(scale(0.7)*"$+1$",4.88*dir(360*3/5+5){dir(360*3/5+90)}..4.9*dir(360*4/5-5){dir(360*4/5+90)},ArcArrow);
draw(scale(0.7)*"$+1$",4.9*dir(360*4/5+5){dir(360*4/5+90)}..4.5*dir(360*0/5-5){dir(360*0/5+90)},ArcArrow);

//label(rotate(360*1/5,(0,0))*scale(0.7)*Label("$=\{\ldots,-9,-4,1,6,\ldots\}$"),(1+0.25,0),E);