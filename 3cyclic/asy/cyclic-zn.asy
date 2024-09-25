settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(0,200);

//draw(scale(7)*unitcircle);

void eclass(int m, int n, real d, real[] l){
	picture pp;
	label(Label("$["+(string) m+"]$"),dir(360*m/n));
	label(pp,scale(0.7)*Label("$=\{\ldots,"+(string) l[0]+","+(string) l[1]+","+(string) l[2]+",\ldots\}$"),(1+d,0),E);
	add(rotate(360*m/n,(0,0))*pp);
}

eclass(0,5,0.25,new real[]{0,5,10});
eclass(1,5,0.25,new real[]{-4,1,6});
eclass(2,5,0.25,new real[]{-3,2,7});
eclass(3,5,0.25,new real[]{-2,3,8});
eclass(4,5,0.25,new real[]{-1,4,9});

draw(scale(0.7)*"$+1$",2.9*dir(360*0/5+5){dir(360*0/5+90)}..3.57*dir(360*1/5-5){dir(360*1/5+90)},ArcArrow);
draw(scale(0.7)*"$+1$",3.57*dir(360*1/5+5){dir(360*1/5+90)}..3.61*dir(360*2/5-5){dir(360*2/5+90)},ArcArrow);
draw(scale(0.7)*"$+1$",3.61*dir(360*2/5+5){dir(360*2/5+90)}..3.57*dir(360*3/5-5){dir(360*3/5+90)},ArcArrow);
draw(scale(0.7)*"$+1$",3.57*dir(360*3/5+5){dir(360*3/5+90)}..3.6*dir(360*4/5-5){dir(360*4/5+90)},ArcArrow);
draw(scale(0.7)*"$+1$",3.6*dir(360*4/5+5){dir(360*4/5+90)}..3.29*dir(360*0/5-5){dir(360*0/5+90)},ArcArrow);

//label(rotate(360*1/5,(0,0))*scale(0.7)*Label("$=\{\ldots,-9,-4,1,6,\ldots\}$"),(1+0.25,0),E);