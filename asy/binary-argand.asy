if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(170);


dot("$2+3i$",(2,3),W);
dot("$1-i$",(1,-1),E);
dot("$\sqrt 3+\frac\pi 2i$",(sqrt(3),pi/2),E);

xaxis(-1.2,3.2,red,RightTicks(new real[]{-1,1,2,3}));
yaxis(-1.2,3.2,red);
ytick(Label("$i$",align=W),1,W,red);
ytick(Label("$-i$",align=W),-1,W,red);
ytick(Label("$2i$",align=W),2,W,red);
ytick(Label("$3i$",align=W),3,W,red);