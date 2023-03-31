%% CASE 1
%% Name: Parameters of Case 1
% Description: This file contains all the parameters of Case 1
% Designer: Shuyuan Fan
% Institute: ICS of TUHH
% shuyuan.fan@tuhh.de

%---------------------------------------------------------------------------------------------
% For Paper, 
% "Closed-loop Concave Configurations and Concave Quadratic Regulator"
% by Shuyuan Fan and Herbert Werner
% Copyright (c) Institute of Control Systems, Hamburg University of Technology. All rights reserved.
% Licensed under the GPLv3. See LICENSE in the project root for license information.
% Author(s): Shuyuan Fan
%--------------------------------------------------------------------------------------------

clc

% system matrix
A = [-1 1;-1 1];
B = [1, 1; 2,1];

% baseline controller
Qb = 2*eye(2);
Rb = 2*eye(2);
[Kb,Pb,~] = lqr(A,B,Qb,Rb);
Aclb = A-B*Kb;
%[T,Lamb] = jordan(Aclb);
[T,Lamb] = eig(Aclb);
T = inv(T);
% parameters of concave factor for concave configuration
k1min = 0.4; k1max = 8; beta1 = 1; eta1 = 0.1;
k2min = 0.2; k2max = 2;beta2 = 1;eta2 = 0.1;

Fcc = [k1min,k1max,beta1,eta1,k2min,k2max,beta2,eta2];

% parameters for CQR
q1min = 0.01; q1max = 50; betaq1 = 10; etaq1 = 0.02;
q2min = 0.02; q2max = 20; betaq2 = 10; etaq2 =0.1;
R = eye(2);
Fcqr = [q1min,q1max,betaq1,etaq1,q2min,q2max,betaq2,etaq2];

Qc0 = diag([q1max,q2max]);
Rc0 = eye(2);

[Kc0,Pc0,~] = lqr(A,B,Qc0,Rc0);

% calculate P(\rho)
rhospan = 0:0.001:10;

Pc0_r = reshape(Pc0',[4,1]);
Fcqr = reshape(Fcqr,[8,1]);
Pc0_r_ag = [Pc0_r;Fcqr];

[rho,P]=ode45(@dpdx_case1,rhospan,Pc0_r_ag);

% initial states
x0 = [2;1];


















