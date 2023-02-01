clear all 
close all 
clc

%% DANE
a1 = 3;
% a2 = 1;
% a3 = 1;
% a4 = 1;
d1 = 3;
d3 = 1;
d4 = 1;
d5 = 1;

%% SZUKANE
alfa2 = pi/2;
alfa3 = 0;
alfa4 = 0;

% theta2 = 0;
% theta3 = 0;
% theta4 = pi/2;

%% MACIERZ KCIUKA
% T_K = [cos(theta4)*(cos(theta2)*cos(theta3) - sin(theta2)*sin(theta3)) - sin(theta4)*(cos(theta2)*sin(theta3) + cos(theta3)*sin(theta2)), - cos(theta4)*(cos(theta2)*sin(theta3) + cos(theta3)*sin(theta2)) - sin(theta4)*(cos(theta2)*cos(theta3) - sin(theta2)*sin(theta3)), 0, a1 + a2*cos(theta2) + a4*cos(theta4)*(cos(theta2)*cos(theta3) - sin(theta2)*sin(theta3)) - a4*sin(theta4)*(cos(theta2)*sin(theta3) + cos(theta3)*sin(theta2)) + a3*cos(theta2)*cos(theta3) - a3*sin(theta2)*sin(theta3)
% cos(theta4)*(cos(theta2)*sin(theta3) + cos(theta3)*sin(theta2)) + sin(theta4)*(cos(theta2)*cos(theta3) - sin(theta2)*sin(theta3)),   cos(theta4)*(cos(theta2)*cos(theta3) - sin(theta2)*sin(theta3)) - sin(theta4)*(cos(theta2)*sin(theta3) + cos(theta3)*sin(theta2)), 0,      a2*sin(theta2) + a4*cos(theta4)*(cos(theta2)*sin(theta3) + cos(theta3)*sin(theta2)) + a4*sin(theta4)*(cos(theta2)*cos(theta3) - sin(theta2)*sin(theta3)) + a3*cos(theta2)*sin(theta3) + a3*cos(theta3)*sin(theta2)
%                                                                                                                                 0,                                                                                                                                   0, 1,                                                                                                                                                                                                                       0
%                                                                                                                                 0,                                                                                                                                   0, 0,                                                                                                                                                                                                                       1]

%% MACIERZ PALCA WSKAZUJĄCEGO
% T_W = [1,                                                                                                                         0,                                                                                                                         0,                                                                                                                                                                                                      0
% 0, - cos(alfa4)*(sin(alfa2)*sin(alfa3) - cos(alfa2)*cos(alfa3)) - sin(alfa4)*(cos(alfa2)*sin(alfa3) + cos(alfa3)*sin(alfa2)),   sin(alfa4)*(sin(alfa2)*sin(alfa3) - cos(alfa2)*cos(alfa3)) - cos(alfa4)*(cos(alfa2)*sin(alfa3) + cos(alfa3)*sin(alfa2)),    - d4*(cos(alfa2)*sin(alfa3) + cos(alfa3)*sin(alfa2)) - d5*(cos(alfa4)*(cos(alfa2)*sin(alfa3) + cos(alfa3)*sin(alfa2)) - sin(alfa4)*(sin(alfa2)*sin(alfa3) - cos(alfa2)*cos(alfa3))) - d3*sin(alfa2)
% 0,   cos(alfa4)*(cos(alfa2)*sin(alfa3) + cos(alfa3)*sin(alfa2)) - sin(alfa4)*(sin(alfa2)*sin(alfa3) - cos(alfa2)*cos(alfa3)), - cos(alfa4)*(sin(alfa2)*sin(alfa3) - cos(alfa2)*cos(alfa3)) - sin(alfa4)*(cos(alfa2)*sin(alfa3) + cos(alfa3)*sin(alfa2)), d1 - d4*(sin(alfa2)*sin(alfa3) - cos(alfa2)*cos(alfa3)) - d5*(cos(alfa4)*(sin(alfa2)*sin(alfa3) - cos(alfa2)*cos(alfa3)) + sin(alfa4)*(cos(alfa2)*sin(alfa3) + cos(alfa3)*sin(alfa2))) + d3*cos(alfa2)
% 0,                                                                                                                         0,                                                                                                                         0,                                                                                                                                                                                                      1]

%% MACIERZ PALCA ŚRODKOWEGO, SERDECZNEGO, MAŁEGO
T_SSM = [1,                                                                                                                         0,                                                                                                                         0,                                                                                                                                                                                                     a1
0, - cos(alfa4)*(sin(alfa2)*sin(alfa3) - cos(alfa2)*cos(alfa3)) - sin(alfa4)*(cos(alfa2)*sin(alfa3) + cos(alfa3)*sin(alfa2)),   sin(alfa4)*(sin(alfa2)*sin(alfa3) - cos(alfa2)*cos(alfa3)) - cos(alfa4)*(cos(alfa2)*sin(alfa3) + cos(alfa3)*sin(alfa2)),    - d4*(cos(alfa2)*sin(alfa3) + cos(alfa3)*sin(alfa2)) - d5*(cos(alfa4)*(cos(alfa2)*sin(alfa3) + cos(alfa3)*sin(alfa2)) - sin(alfa4)*(sin(alfa2)*sin(alfa3) - cos(alfa2)*cos(alfa3))) - d3*sin(alfa2)
0,   cos(alfa4)*(cos(alfa2)*sin(alfa3) + cos(alfa3)*sin(alfa2)) - sin(alfa4)*(sin(alfa2)*sin(alfa3) - cos(alfa2)*cos(alfa3)), - cos(alfa4)*(sin(alfa2)*sin(alfa3) - cos(alfa2)*cos(alfa3)) - sin(alfa4)*(cos(alfa2)*sin(alfa3) + cos(alfa3)*sin(alfa2)), d1 - d4*(sin(alfa2)*sin(alfa3) - cos(alfa2)*cos(alfa3)) - d5*(cos(alfa4)*(sin(alfa2)*sin(alfa3) - cos(alfa2)*cos(alfa3)) + sin(alfa4)*(cos(alfa2)*sin(alfa3) + cos(alfa3)*sin(alfa2))) + d3*cos(alfa2)
0,                                                                                                                         0,                                                                                                                         0,                                                                                                                                                                                                      1]

