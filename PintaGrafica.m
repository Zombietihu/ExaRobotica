function [ z ] = PintaGrafica( t1, d1, t2, t3, d3, t4, t5, d5, t6, a7, t7)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

%%
%Definicion de variables
x1=0;
y1=-7.5;
z1=36;

teta1=t1*pi/180;
teta2=t2*pi/180;
teta3=t3*pi/180;
teta4=t4*pi/180;
teta5=t5*pi/180;
teta6=t6*pi/180;
teta7=t7*pi/180;

%parametros DH
theta1=teta1+(pi/2);
theta2=teta2-(pi/2);
theta3=teta3;
theta4=teta4;
theta5=teta5+(pi/2);
theta6=teta6-(pi/2);
theta7=teta7;

%%
%calculo de TOA1
TOA1=[round(cos(pi/2)) round(-sin(pi/2))*round(cos(pi/2)) round(sin(pi/2))*round(sin(pi/2)) x1;
    round(sin(pi/2)) round(cos(pi/2))*round(cos(pi/2)) round(-cos(pi/2))*round(sin(pi/2)) y1;
    0 round(sin(pi/2)) round(cos(pi/2)) z1; 
    0 0 0 1];
display(TOA1);
%%Ecuaciones de Puntos finales de origen a vinculo


%Para X
A01(1,4)=d1 + x1;
display(A01(1,4))
A02(1,4)=d1 + x1;
A03(1,4)=d1 + x1 + d3*cos(theta2);
A04(1,4)=d1 + x1 + d3*cos(theta2);
A05(1,4)=d1 + x1 + d5*(cos(theta2)*cos(theta4) - cos(theta3)*sin(theta2)*sin(theta4)) + d3*cos(theta2);
A06(1,4)=d1 + x1 + d5*(cos(theta2)*cos(theta4) - cos(theta3)*sin(theta2)*sin(theta4)) + d3*cos(theta2);
A07(1,4)=d1 + x1 + d5*(cos(theta2)*cos(theta4) - cos(theta3)*sin(theta2)*sin(theta4)) + d3*cos(theta2) - a7*cos(theta7)*(cos(theta6)*(cos(theta5)*(cos(theta2)*sin(theta4) + cos(theta3)*cos(theta4)*sin(theta2)) - sin(theta2)*sin(theta3)*sin(theta5)) - sin(theta6)*(cos(theta2)*cos(theta4) - cos(theta3)*sin(theta2)*sin(theta4))) + a7*sin(theta7)*(sin(theta5)*(cos(theta2)*sin(theta4) + cos(theta3)*cos(theta4)*sin(theta2)) + cos(theta5)*sin(theta2)*sin(theta3));

%Para Y
A01(2,4)=y1;
A02(2,4)=y1;
A03(2,4)=y1 + d3*cos(theta1)*sin(theta2);
A04(2,4)=y1 + d3*cos(theta1)*sin(theta2);
A05(2,4)=y1 - d5*(sin(theta4)*(sin(theta1)*sin(theta3) - cos(theta1)*cos(theta2)*cos(theta3)) - cos(theta1)*cos(theta4)*sin(theta2)) + d3*cos(theta1)*sin(theta2);
A06(2,4)=y1 - d5*(sin(theta4)*(sin(theta1)*sin(theta3) - cos(theta1)*cos(theta2)*cos(theta3)) - cos(theta1)*cos(theta4)*sin(theta2)) + d3*cos(theta1)*sin(theta2);
A07(2,4)=y1 - d5*(sin(theta4)*(sin(theta1)*sin(theta3) - cos(theta1)*cos(theta2)*cos(theta3)) - cos(theta1)*cos(theta4)*sin(theta2)) + a7*sin(theta7)*(sin(theta5)*(cos(theta4)*(sin(theta1)*sin(theta3) - cos(theta1)*cos(theta2)*cos(theta3)) + cos(theta1)*sin(theta2)*sin(theta4)) - cos(theta5)*(cos(theta3)*sin(theta1) + cos(theta1)*cos(theta2)*sin(theta3))) + d3*cos(theta1)*sin(theta2) - a7*cos(theta7)*(sin(theta6)*(sin(theta4)*(sin(theta1)*sin(theta3) - cos(theta1)*cos(theta2)*cos(theta3)) - cos(theta1)*cos(theta4)*sin(theta2)) + cos(theta6)*(cos(theta5)*(cos(theta4)*(sin(theta1)*sin(theta3) - cos(theta1)*cos(theta2)*cos(theta3)) + cos(theta1)*sin(theta2)*sin(theta4)) + sin(theta5)*(cos(theta3)*sin(theta1) + cos(theta1)*cos(theta2)*sin(theta3))));

%Para Z

A01(3,4)=z1;
A02(3,4)=z1;
A03(3,4)=z1 + d3*sin(theta1)*sin(theta2);
A04(3,4)=z1 + d3*sin(theta1)*sin(theta2);
A05(3,4)=z1 + d5*(sin(theta4)*(cos(theta1)*sin(theta3) + cos(theta2)*cos(theta3)*sin(theta1)) + cos(theta4)*sin(theta1)*sin(theta2)) + d3*sin(theta1)*sin(theta2);
A06(3,4)=z1 + d5*(sin(theta4)*(cos(theta1)*sin(theta3) + cos(theta2)*cos(theta3)*sin(theta1)) + cos(theta4)*sin(theta1)*sin(theta2)) + d3*sin(theta1)*sin(theta2);
A07(3,4)=z1 + d5*(sin(theta4)*(cos(theta1)*sin(theta3) + cos(theta2)*cos(theta3)*sin(theta1)) + cos(theta4)*sin(theta1)*sin(theta2)) + a7*cos(theta7)*(sin(theta6)*(sin(theta4)*(cos(theta1)*sin(theta3) + cos(theta2)*cos(theta3)*sin(theta1)) + cos(theta4)*sin(theta1)*sin(theta2)) + cos(theta6)*(cos(theta5)*(cos(theta4)*(cos(theta1)*sin(theta3) + cos(theta2)*cos(theta3)*sin(theta1)) - sin(theta1)*sin(theta2)*sin(theta4)) + sin(theta5)*(cos(theta1)*cos(theta3) - cos(theta2)*sin(theta1)*sin(theta3)))) - a7*sin(theta7)*(sin(theta5)*(cos(theta4)*(cos(theta1)*sin(theta3) + cos(theta2)*cos(theta3)*sin(theta1)) - sin(theta1)*sin(theta2)*sin(theta4)) - cos(theta5)*(cos(theta1)*cos(theta3) - cos(theta2)*sin(theta1)*sin(theta3))) + d3*sin(theta1)*sin(theta2);

x=[0 0 0 A01(1,4) A02(1,4) A03(1,4) A04(1,4) A05(1,4) A06(1,4) A07(1,4)] ;
y=[0 0 -7.5 A01(2,4) A02(2,4) A03(2,4) A04(2,4) A05(2,4) A06(2,4) A07(2,4)];
z=[0 36 36 A01(3,4) A02(3,4) A03(3,4) A04(3,4) A05(3,4) A06(3,4) A07(3,4)];

%GRAFICAS
lf=2;%largo flecha
pp=.75;%porcentaje de punta
dia1=.25;%grueso flecha
dia2=.5;%grueso punta
p=plot3(x,y,z);
xlabel('eje x');
ylabel('eje y');
zlabel('eje z');
grid on
axis([-40 40 -40 40 0 40])
set(p,'Color','black','LineWidth',7)
hold
%sistema de refrencia x0 y0 z0
arrow3d([0 0],[0 0],[0 5],pp,dia1,dia2,'b');
arrow3d([0 0],[0 5],[0 0],pp,dia1,dia2,'g');
arrow3d([0 5],[0 0],[0 0],pp,dia1,dia2,'r');


%sistema de refrencia x0 y0 z0


arrow3d([TOA1(1,4) TOA1(1,4)+lf*TOA1(1,1)],[TOA1(2,4) TOA1(2,4)+lf*TOA1(2,1)],[TOA1(3,4) TOA1(3,4)+lf*TOA1(3,1)],pp,dia1,dia2,'r')%x
arrow3d([TOA1(1,4) TOA1(1,4)+lf*TOA1(1,2)],[TOA1(2,4) TOA1(2,4)+lf*TOA1(2,2)],[TOA1(3,4) TOA1(3,4)+lf*TOA1(3,2)],pp,dia1,dia2,'g')%y
arrow3d([TOA1(1,4) TOA1(1,4)+lf*TOA1(1,3)],[TOA1(2,4) TOA1(2,4)+lf*TOA1(2,3)],[TOA1(3,4) TOA1(3,4)+lf*TOA1(3,3)],pp,dia1,dia2,'b')%z



%sistema de refrencia x1 y1 z1
arrow3d([A01(1,4) A01(1,4)+lf*A01(1,1)],[A01(2,4) A01(2,4)+lf*A01(2,1)],[A01(3,4) A01(3,4)+lf*A01(3,1)],pp,dia1,dia2,'r')%x
arrow3d([A01(1,4) A01(1,4)+lf*A01(1,2)],[A01(2,4) A01(2,4)+lf*A01(2,2)],[A01(3,4) A01(3,4)+lf*A01(3,2)],pp,dia1,dia2,'g')%y
arrow3d([A01(1,4) A01(1,4)+lf*A01(1,3)],[A01(2,4) A01(2,4)+lf*A01(2,3)],[A01(3,4) A01(3,4)+lf*A01(3,3)],pp,dia1,dia2,'b')%z

%sistema de refrencia x2 y2 z2
A02=A02*[1 0 0 0;0 1 0 0;0 0 1 2;0 0 0 1];

arrow3d([A02(1,4) A02(1,4)+lf*A02(1,1)],[A02(2,4) A02(2,4)+lf*A02(2,1)],[A02(3,4) A02(3,4)+lf*A02(3,1)],pp,dia1,dia2,'r')%x falta
arrow3d([A02(1,4) A02(1,4)+lf*A02(1,2)],[A02(2,4) A02(2,4)+lf*A02(2,2)],[A02(3,4) A02(3,4)+lf*A02(3,2)],pp,dia1,dia2,'g')%y falta
arrow3d([A02(1,4) A02(1,4)+lf*A02(1,3)],[A02(2,4) A02(2,4)+lf*A02(2,3)],[A02(3,4) A02(3,4)+lf*A02(3,3)],pp,dia1,dia2,'b')%z falta

%sistema de refrencia x3 y3 z3
arrow3d([A03(1,4) A03(1,4)+lf*A03(1,1)],[A03(2,4) A03(2,4)+lf*A03(2,1)],[A03(3,4) A03(3,4)+lf*A03(3,1)],pp,dia1,dia2,'r')%x
arrow3d([A03(1,4) A03(1,4)+lf*A03(1,2)],[A03(2,4) A03(2,4)+lf*A03(2,2)],[A03(3,4) A03(3,4)+lf*A03(3,2)],pp,dia1,dia2,'g')%y
arrow3d([A03(1,4) A03(1,4)+lf*A03(1,3)],[A03(2,4) A03(2,4)+lf*A03(2,3)],[A03(3,4) A03(3,4)+lf*A03(3,3)],pp,dia1,dia2,'b')%z

A04=A04*[1 0 0 0;0 1 0 0;0 0 1 2;0 0 0 1]

%sistema de refrencia x4 y4 z4
arrow3d([A04(1,4) A04(1,4)+lf*A04(1,1)],[A04(2,4) A04(2,4)+lf*A04(2,1)],[A04(3,4) A04(3,4)+lf*A04(3,1)],pp,dia1,dia2,'r')%x falta
arrow3d([A04(1,4) A04(1,4)+lf*A04(1,2)],[A04(2,4) A04(2,4)+lf*A04(2,2)],[A04(3,4) A04(3,4)+lf*A04(3,2)],pp,dia1,dia2,'g')%y falta
arrow3d([A04(1,4) A04(1,4)+lf*A04(1,3)],[A04(2,4) A04(2,4)+lf*A04(2,3)],[A04(3,4) A04(3,4)+lf*A04(3,3)],pp,dia1,dia2,'b')%z falta

%sistema de refrencia x5 y5 z5
arrow3d([A05(1,4) A05(1,4)+lf*A05(1,1)],[A05(2,4) A05(2,4)+lf*A05(2,1)],[A05(3,4) A05(3,4)+lf*A05(3,1)],pp,dia1,dia2,'r')%x
arrow3d([A05(1,4) A05(1,4)+lf*A05(1,2)],[A05(2,4) A05(2,4)+lf*A05(2,2)],[A05(3,4) A05(3,4)+lf*A05(3,2)],pp,dia1,dia2,'g')%y
arrow3d([A05(1,4) A05(1,4)+lf*A05(1,3)],[A05(2,4) A05(2,4)+lf*A05(2,3)],[A05(3,4) A05(3,4)+lf*A05(3,3)],pp,dia1,dia2,'b')%z

%sistema de refrencia x6 y6 z6
arrow3d([A06(1,4) A06(1,4)+lf*A06(1,1)],[A06(2,4) A06(2,4)+lf*A06(2,1)],[A06(3,4) A06(3,4)+lf*A06(3,1)],pp,dia1,dia2,'r')%x
arrow3d([A06(1,4) A06(1,4)+lf*A06(1,2)],[A06(2,4) A06(2,4)+lf*A06(2,2)],[A06(3,4) A06(3,4)+lf*A06(3,2)],pp,dia1,dia2,'g')%y
arrow3d([A06(1,4) A06(1,4)+lf*A06(1,3)],[A06(2,4) A06(2,4)+lf*A06(2,3)],[A06(3,4) A06(3,4)+lf*A06(3,3)],pp,dia1,dia2,'b')%z
    
%sistema de refrencia x7 y7 z7
arrow3d([A07(1,4) A07(1,4)+lf*A07(1,1)],[A07(2,4) A07(2,4)+lf*A07(2,1)],[A07(3,4) A07(3,4)+lf*A07(3,1)],pp,dia1,dia2,'r')%x
arrow3d([A07(1,4) A07(1,4)+lf*A07(1,2)],[A07(2,4) A07(2,4)+lf*A07(2,2)],[A07(3,4) A07(3,4)+lf*A07(3,2)],pp,dia1,dia2,'g')%y
arrow3d([A07(1,4) A07(1,4)+lf*A07(1,3)],[A07(2,4) A07(2,4)+lf*A07(2,3)],[A07(3,4) A07(3,4)+lf*A07(3,3)],pp,dia1,dia2,'b')%z



end

