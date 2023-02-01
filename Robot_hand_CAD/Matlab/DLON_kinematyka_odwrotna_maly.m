%%  Kinematyka odwrotna dla małego
clear all
close all
clc

%% STAŁE
d1 = 3;
d3 = 1;
d4 = 1;
d5 = 1;
a1 = 3;

%% SZUKANE
%alfa2 = sym('alfa2');
%alfa3 = sym('alfa3');
%alfa4 = sym('alfa4');

%% WSPÓŁRZĘDNE PUNKTU
x = 3;
y = -3;
z = 3;


%% MACIERZ KINEMATYKI PROSTEJ
syms alfa2 alfa3 alfa4
T_SSM = [1,                                                                                                                         0,                                                                                                                         0,                                                                                                                                                                                                     a1
0, - cos(alfa4)*(sin(alfa2)*sin(alfa3) - cos(alfa2)*cos(alfa3)) - sin(alfa4)*(cos(alfa2)*sin(alfa3) + cos(alfa3)*sin(alfa2)),   sin(alfa4)*(sin(alfa2)*sin(alfa3) - cos(alfa2)*cos(alfa3)) - cos(alfa4)*(cos(alfa2)*sin(alfa3) + cos(alfa3)*sin(alfa2)),    - d4*(cos(alfa2)*sin(alfa3) + cos(alfa3)*sin(alfa2)) - d5*(cos(alfa4)*(cos(alfa2)*sin(alfa3) + cos(alfa3)*sin(alfa2)) - sin(alfa4)*(sin(alfa2)*sin(alfa3) - cos(alfa2)*cos(alfa3))) - d3*sin(alfa2)
0,   cos(alfa4)*(cos(alfa2)*sin(alfa3) + cos(alfa3)*sin(alfa2)) - sin(alfa4)*(sin(alfa2)*sin(alfa3) - cos(alfa2)*cos(alfa3)), - cos(alfa4)*(sin(alfa2)*sin(alfa3) - cos(alfa2)*cos(alfa3)) - sin(alfa4)*(cos(alfa2)*sin(alfa3) + cos(alfa3)*sin(alfa2)), d1 - d4*(sin(alfa2)*sin(alfa3) - cos(alfa2)*cos(alfa3)) - d5*(cos(alfa4)*(sin(alfa2)*sin(alfa3) - cos(alfa2)*cos(alfa3)) + sin(alfa4)*(cos(alfa2)*sin(alfa3) + cos(alfa3)*sin(alfa2))) + d3*cos(alfa2)
0,                                                                                                                         0,                                                                                                                         0,                                                                                                                                                                                                      1];

eqn1 = T_SSM(1,4) == x;
eqn2 = T_SSM(2,4) == y;
eqn3 = T_SSM(3,4) == z;
eqn4 = (pi/2 >= alfa2) & (alfa2 >= 0);
eqn5 = (pi/2 >= alfa3) & (alfa3 >= 0);
eqn6 = (pi/2 >= alfa4) & (alfa4 >= 0);
eqns = [eqn1 eqn2 eqn3 eqn4 eqn5 eqn6];

vars = [alfa2 alfa3 alfa4];
[solalfa2, solalfa3, solalfa4] = solve(eqns,vars)
