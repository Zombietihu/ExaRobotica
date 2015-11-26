function [ Px, Py, Pz,k  ] = CalculaPuntoFinal( t1, d1, t2, t3, d3, t4, t5, d5, t6, a7, t7)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

x=0;
y=-7.5;
z=36;

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

Px=d1 + x + d5*(cos(theta2)*cos(theta4) - cos(theta3)*sin(theta2)*sin(theta4)) + d3*cos(theta2) - a7*cos(theta7)*(cos(theta6)*(cos(theta5)*(cos(theta2)*sin(theta4) + cos(theta3)*cos(theta4)*sin(theta2)) - sin(theta2)*sin(theta3)*sin(theta5)) - sin(theta6)*(cos(theta2)*cos(theta4) - cos(theta3)*sin(theta2)*sin(theta4))) + a7*sin(theta7)*(sin(theta5)*(cos(theta2)*sin(theta4) + cos(theta3)*cos(theta4)*sin(theta2)) + cos(theta5)*sin(theta2)*sin(theta3));
Py=y - d5*(sin(theta4)*(sin(theta1)*sin(theta3) - cos(theta1)*cos(theta2)*cos(theta3)) - cos(theta1)*cos(theta4)*sin(theta2)) + a7*sin(theta7)*(sin(theta5)*(cos(theta4)*(sin(theta1)*sin(theta3) - cos(theta1)*cos(theta2)*cos(theta3)) + cos(theta1)*sin(theta2)*sin(theta4)) - cos(theta5)*(cos(theta3)*sin(theta1) + cos(theta1)*cos(theta2)*sin(theta3))) + d3*cos(theta1)*sin(theta2) - a7*cos(theta7)*(sin(theta6)*(sin(theta4)*(sin(theta1)*sin(theta3) - cos(theta1)*cos(theta2)*cos(theta3)) - cos(theta1)*cos(theta4)*sin(theta2)) + cos(theta6)*(cos(theta5)*(cos(theta4)*(sin(theta1)*sin(theta3) - cos(theta1)*cos(theta2)*cos(theta3)) + cos(theta1)*sin(theta2)*sin(theta4)) + sin(theta5)*(cos(theta3)*sin(theta1) + cos(theta1)*cos(theta2)*sin(theta3))));
Pz=z + d5*(sin(theta4)*(cos(theta1)*sin(theta3) + cos(theta2)*cos(theta3)*sin(theta1)) + cos(theta4)*sin(theta1)*sin(theta2)) + a7*cos(theta7)*(sin(theta6)*(sin(theta4)*(cos(theta1)*sin(theta3) + cos(theta2)*cos(theta3)*sin(theta1)) + cos(theta4)*sin(theta1)*sin(theta2)) + cos(theta6)*(cos(theta5)*(cos(theta4)*(cos(theta1)*sin(theta3) + cos(theta2)*cos(theta3)*sin(theta1)) - sin(theta1)*sin(theta2)*sin(theta4)) + sin(theta5)*(cos(theta1)*cos(theta3) - cos(theta2)*sin(theta1)*sin(theta3)))) - a7*sin(theta7)*(sin(theta5)*(cos(theta4)*(cos(theta1)*sin(theta3) + cos(theta2)*cos(theta3)*sin(theta1)) - sin(theta1)*sin(theta2)*sin(theta4)) - cos(theta5)*(cos(theta1)*cos(theta3) - cos(theta2)*sin(theta1)*sin(theta3))) + d3*sin(theta1)*sin(theta2);
syms theta1 theta2 theta3 theta4 theta5 theta6 theta7;
Px2=d1 + x + d5*(cos(theta2)*cos(theta4) - cos(theta3)*sin(theta2)*sin(theta4)) + d3*cos(theta2) - a7*cos(theta7)*(cos(theta6)*(cos(theta5)*(cos(theta2)*sin(theta4) + cos(theta3)*cos(theta4)*sin(theta2)) - sin(theta2)*sin(theta3)*sin(theta5)) - sin(theta6)*(cos(theta2)*cos(theta4) - cos(theta3)*sin(theta2)*sin(theta4))) + a7*sin(theta7)*(sin(theta5)*(cos(theta2)*sin(theta4) + cos(theta3)*cos(theta4)*sin(theta2)) + cos(theta5)*sin(theta2)*sin(theta3));
Py2=y - d5*(sin(theta4)*(sin(theta1)*sin(theta3) - cos(theta1)*cos(theta2)*cos(theta3)) - cos(theta1)*cos(theta4)*sin(theta2)) + a7*sin(theta7)*(sin(theta5)*(cos(theta4)*(sin(theta1)*sin(theta3) - cos(theta1)*cos(theta2)*cos(theta3)) + cos(theta1)*sin(theta2)*sin(theta4)) - cos(theta5)*(cos(theta3)*sin(theta1) + cos(theta1)*cos(theta2)*sin(theta3))) + d3*cos(theta1)*sin(theta2) - a7*cos(theta7)*(sin(theta6)*(sin(theta4)*(sin(theta1)*sin(theta3) - cos(theta1)*cos(theta2)*cos(theta3)) - cos(theta1)*cos(theta4)*sin(theta2)) + cos(theta6)*(cos(theta5)*(cos(theta4)*(sin(theta1)*sin(theta3) - cos(theta1)*cos(theta2)*cos(theta3)) + cos(theta1)*sin(theta2)*sin(theta4)) + sin(theta5)*(cos(theta3)*sin(theta1) + cos(theta1)*cos(theta2)*sin(theta3))));
Pz2=z + d5*(sin(theta4)*(cos(theta1)*sin(theta3) + cos(theta2)*cos(theta3)*sin(theta1)) + cos(theta4)*sin(theta1)*sin(theta2)) + a7*cos(theta7)*(sin(theta6)*(sin(theta4)*(cos(theta1)*sin(theta3) + cos(theta2)*cos(theta3)*sin(theta1)) + cos(theta4)*sin(theta1)*sin(theta2)) + cos(theta6)*(cos(theta5)*(cos(theta4)*(cos(theta1)*sin(theta3) + cos(theta2)*cos(theta3)*sin(theta1)) - sin(theta1)*sin(theta2)*sin(theta4)) + sin(theta5)*(cos(theta1)*cos(theta3) - cos(theta2)*sin(theta1)*sin(theta3)))) - a7*sin(theta7)*(sin(theta5)*(cos(theta4)*(cos(theta1)*sin(theta3) + cos(theta2)*cos(theta3)*sin(theta1)) - sin(theta1)*sin(theta2)*sin(theta4)) - cos(theta5)*(cos(theta1)*cos(theta3) - cos(theta2)*sin(theta1)*sin(theta3))) + d3*sin(theta1)*sin(theta2);

f=[Px2;Py2;Pz2];
j=jacobian(f);
k=subs(j,{theta1,theta2,theta3,theta4,theta5,theta6,theta7},{teta1+(pi/2),teta2-(pi/2),teta3,teta4,teta5+(pi/2),teta6-(pi/2),teta7});
end

