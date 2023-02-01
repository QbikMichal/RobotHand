%%  Kinematyka odwrotna dla kciuka
clear all
close all
clc

%% STAŁE
a1 = 3;
a2 = 1;
a3 = 1;
a4 = 1;

%% SZUKANE
% theta1 = sym('theta1');
% theta2 = sym('theta2');
% theta3 = sym('theta3');

%% WSPÓŁRZĘDNE PUNKTU
x = 5;
y = 1;
z = 0;

syms theta2 theta3 theta4
T_K = [cos(theta4)*(cos(theta2)*cos(theta3) - sin(theta2)*sin(theta3)) - sin(theta4)*(cos(theta2)*sin(theta3) + cos(theta3)*sin(theta2)), - cos(theta4)*(cos(theta2)*sin(theta3) + cos(theta3)*sin(theta2)) - sin(theta4)*(cos(theta2)*cos(theta3) - sin(theta2)*sin(theta3)), 0, a1 + a2*cos(theta2) + a4*cos(theta4)*(cos(theta2)*cos(theta3) - sin(theta2)*sin(theta3)) - a4*sin(theta4)*(cos(theta2)*sin(theta3) + cos(theta3)*sin(theta2)) + a3*cos(theta2)*cos(theta3) - a3*sin(theta2)*sin(theta3)
cos(theta4)*(cos(theta2)*sin(theta3) + cos(theta3)*sin(theta2)) + sin(theta4)*(cos(theta2)*cos(theta3) - sin(theta2)*sin(theta3)),   cos(theta4)*(cos(theta2)*cos(theta3) - sin(theta2)*sin(theta3)) - sin(theta4)*(cos(theta2)*sin(theta3) + cos(theta3)*sin(theta2)), 0,      a2*sin(theta2) + a4*cos(theta4)*(cos(theta2)*sin(theta3) + cos(theta3)*sin(theta2)) + a4*sin(theta4)*(cos(theta2)*cos(theta3) - sin(theta2)*sin(theta3)) + a3*cos(theta2)*sin(theta3) + a3*cos(theta3)*sin(theta2)
                                                                                                                                0,                                                                                                                                   0, 1,                                                                                                                                                                                                                       0
                                                                                                                                0,                                                                                                                                   0, 0,                                                                                                                                                                                                                       1];
eqn1 = T_K(1,4) == x;
eqn2 = T_K(2,4) == y;
eqn3 = T_K(3,4) == z;
eqn4 = (pi/2 >= theta2) & (theta2 >= 0);
eqn5 = (pi/2 >= theta3) & (theta3 >= 0);
eqn6 = (pi/2 >= theta4) & (theta4 >= 0);
eqns = [eqn1 eqn2 eqn3 eqn4 eqn5 eqn6];

vars = [theta2 theta3 theta4];
[soltheta2, soltheta3, soltheta4] = solve(eqns,vars)



