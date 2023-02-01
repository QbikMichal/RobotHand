clc
clear all
close all

%ZMIENNE
alfa2 = sym('alfa2');
alfa3 = sym('alfa3');
alfa4 = sym('alfa4');
theta2 = sym('theta2');
theta3 = sym('theta3');
theta4 = sym('theta4');

%STAŁE
d1 = sym('d1');
d3 = sym('d3');
d4 = sym('d4');
d5 = sym('d5');

a1 = sym('a1');
a2 = sym('a2');
a3 = sym('a3');
a4 = sym('a4');

%% DLA PALCA WSKAZUJĄCEGO
%===================
TZ1 = [ 1 0 0 0
        0 1 0 0
        0 0 1 d1
        0 0 0 1];
A1 = TZ1;

%===================
RX2 = [1 0 0 0
        0 cos(alfa2) -sin(alfa2) 0
        0 sin(alfa2) cos(alfa2) 0
        0 0 0 1];

A2 = RX2;

%===================
TZ3 = [ 1 0 0 0
        0 1 0 0
        0 0 1 d3
        0 0 0 1];

RX3 = [1 0 0 0
        0 cos(alfa3) -sin(alfa3) 0
        0 sin(alfa3) cos(alfa3) 0
        0 0 0 1];

A3 = TZ3*RX3;
%===================
TZ4 = [ 1 0 0 0
        0 1 0 0
        0 0 1 d4
        0 0 0 1];

RX4 = [1 0 0 0
        0 cos(alfa4) -sin(alfa4) 0
        0 sin(alfa4) cos(alfa4) 0
        0 0 0 1];

A4 = TZ4*RX4;

%===================
TZ5 = [ 1 0 0 0
        0 1 0 0
        0 0 1 d5
        0 0 0 1];
A5 = TZ5;

%==================

T_W = A1*A2*A3*A4*A5

%% DLA PALCA ŚRODKOWEGO, SERDECZNEGO, MAŁEGO
%===================
TZ6 = [ 1 0 0 0
        0 1 0 0
        0 0 1 d1
        0 0 0 1];

TX6 = [ 1 0 0 a1
        0 1 0 0
        0 0 1 0
        0 0 0 1];

A6 = TZ6*TX6;

%===================
RX7 = [1 0 0 0
        0 cos(alfa2) -sin(alfa2) 0
        0 sin(alfa2) cos(alfa2) 0
        0 0 0 1];

A7 = RX7;

%===================
TZ8 = [ 1 0 0 0
        0 1 0 0
        0 0 1 d3
        0 0 0 1];

RX8 = [1 0 0 0
        0 cos(alfa3) -sin(alfa3) 0
        0 sin(alfa3) cos(alfa3) 0
        0 0 0 1];

A8 = TZ8*RX8;
%===================
TZ9 = [ 1 0 0 0
        0 1 0 0
        0 0 1 d4
        0 0 0 1];

RX9 = [1 0 0 0
        0 cos(alfa4) -sin(alfa4) 0
        0 sin(alfa4) cos(alfa4) 0
        0 0 0 1];

A9 = TZ9*RX9;

%===================
TZ10 = [ 1 0 0 0
        0 1 0 0
        0 0 1 d5
        0 0 0 1];
A10 = TZ10;
%==================

T_SSM = A6*A7*A8*A9*A10

%% DLA KCIUKA
%===================
TX11 = [ 1 0 0 a1
        0 1 0 0
        0 0 1 0
        0 0 0 1];

A11 = TX11;

%===================
TX12 = [ 1 0 0 a2
        0 1 0 0
        0 0 1 0
        0 0 0 1];

RZ12 = [  cos(theta2) -sin(theta2) 0 0
        sin(theta2) cos(theta2) 0 0
        0 0 1 0
        0 0 0 1];

A12 = RZ12*TX12;

%===================
TX13 = [ 1 0 0 a3
        0 1 0 0
        0 0 1 0
        0 0 0 1];

RZ13 = [  cos(theta3) -sin(theta3) 0 0
        sin(theta3) cos(theta3) 0 0
        0 0 1 0
        0 0 0 1];

A13 = RZ13*TX13;

%===================
TX14 = [ 1 0 0 a4
        0 1 0 0
        0 0 1 0
        0 0 0 1];

RZ14 = [  cos(theta4) -sin(theta4) 0 0
        sin(theta4) cos(theta4) 0 0
        0 0 1 0
        0 0 0 1];

A14 = RZ14*TX14;
%==================

T_K = A11*A12*A13*A14