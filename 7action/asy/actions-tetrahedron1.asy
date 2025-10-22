if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.prc=false;
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
");

include graph;
import graph3;

size3(140);
currentprojection=perspective(3,-1,1);

real th=2pi/3;
real ph=aCos(1/9);

triple[] vert={expi(0,0),expi(ph,0),expi(ph,th),expi(ph,2th),expi(0,0),expi(ph,0)};


pen[] col={red,blue,green,orange};

for(int i=0; i<=3; ++i){
	path3 s=vert[i]--vert[i+1]--vert[i+2]--cycle;
	draw(s);
	draw(surface(s),col[i]+opacity(1));
	//label((string) (i+1),vert[i],vert[i]);
	}
	


label(Label(rotate(aCos(1/3)-90,vert[1],vert[2])*rotate(60,Z)*YZ()*"\Huge 1"),(vert[0]+vert[1]+vert[2])/2.9,Embedded);
label(Label(rotate(aCos(1/3)-90,vert[2],vert[3])*rotate(180,Z)*YZ()*"\Huge 2"),(vert[0]+vert[3]+vert[2])/2.9,Embedded);
label(Label(rotate(aCos(1/3)-90,vert[3],vert[1])*rotate(300,Z)*YZ()*"\Huge 3"),(vert[0]+vert[1]+vert[3])/2.9,Embedded);
label(Label(rotate(180,vert[3],(vert[1]+vert[2])/2)*rotate(-30,Z)*XY()*"\Huge 4"),(vert[1]+vert[2]+vert[3])/2.9,Embedded);

