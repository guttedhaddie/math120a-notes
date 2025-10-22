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

size3(80);
currentprojection=perspective(10,2,2.5);

real th=2pi/3;
real ph=aCos(1/9);

triple[] vert={expi(0,0),expi(ph,0),expi(ph,th),expi(ph,2th),expi(0,0),expi(ph,0)};


pen[] col={green,orange,lightred,lightblue};

for(int i=0; i<=3; ++i){
	path3 s=vert[i]--vert[i+1]--vert[i+2]--cycle;
	draw(s);
	draw(surface(s),col[i]+opacity(0.7));
	//label((string) (i+1),vert[i],vert[i]);
	}
	


label(Label(rotate(aCos(1/3)-90,vert[1],vert[2])*rotate(60,Z)*YZ()*"\Huge 1"),(vert[0]+vert[1]+vert[2])/2.9,Embedded);
label(Label(rotate(aCos(1/3)-90,vert[2],vert[3])*rotate(180,Z)*YZ()*"\Huge 2"),(vert[0]+vert[3]+vert[2])/2.9,Embedded);
label(Label(rotate(aCos(1/3)-90,vert[3],vert[1])*rotate(300,Z)*YZ()*"\Huge 3"),(vert[0]+vert[1]+vert[3])/2.9,Embedded);
label(Label(rotate(180,vert[3],(vert[1]+vert[2])/2)*rotate(-30,Z)*XY()*"\Huge 4"),(vert[1]+vert[2]+vert[3])/2.9,Embedded);

light Headlamp=light(specularfactor=1,dir(20,100));

currentlight=Headlamp;