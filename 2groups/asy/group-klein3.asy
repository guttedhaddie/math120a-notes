settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(420,0);

real X=1.8;
real Y=0.8;

transform Sh=shift((3.5X,0));
transform b=reflect((0,0),(0,1));
transform c=reflect((0,0),(1,0));
transform adj=shift((-0.35X,0));

picture rect;
draw(rect,box((-X,-Y),(X,Y)),linewidth(0.8));

dotfactor=7;

void smile(picture pic=currentpicture,pen pen=black){
	draw(pic,adj*(-0.3,-0.2)..adj*(0,-0.35)..adj*(0.3,-0.2),pen);
	dot(pic,adj*(-0.25,0.25),pen);
	dot(pic,adj*(0.25,0.25),pen,NoFill);
	draw(pic,adj*(-0.05,-0.1)--adj*(0,0.05)--adj*(0.05,-0.1),pen);
	draw(pic,adj*scale(0.6)*unitcircle,pen);
}

add(rect);
smile(black);
label("Original",(0,-Y),S);


picture hor;
add(Sh*rect);
smile(hor,black+opacity(0.15));
add(Sh*b*hor);
label("Face on back",Sh*(0,-Y),S);

picture rot;
add(Sh*Sh*rect);
smile(rot,black);
add(Sh*Sh*b*c*rot);
label("Face up",Sh*Sh*(0,-Y),S);


draw("$c$",(1.1X,0.1Y){dir(10)}..(Sh*(0,0.1Y)-(1.1X,0)){dir(-10)},blue,Arrow);
draw("$b$",Sh*(1.1X,0.1Y){dir(10)}..Sh*(Sh*(0,0.1Y)-(1.1X,0)){dir(-10)},red,Arrow);
draw("$a$",(1.1X,1.05Y){dir(13)}..Sh*(Sh*(0,1.05Y)-(1.1X,0)){dir(-13)},heavygreen,Arrow);

//draw((0,-Y)--(0,Y),dashed+blue);
//draw((-X,0)--(X,0),dashed+red);

//draw(Label("$a$",Relative(0.5),align=W),arc((-1.07X,0),0.3,90,270),heavygreen,ArcArrow);
//draw("$c$",(-0.3,-1.17Y)--(0.3,-1.17Y),blue,Arrows);
//draw("$b$",(1.1X,-0.3)--(1.1X,0.3),red,Arrows);
