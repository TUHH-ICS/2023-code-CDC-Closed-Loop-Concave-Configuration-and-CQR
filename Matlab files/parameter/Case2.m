%% Name: Parameters of Case 2
% Description: This file contains all the parameters of Case 2
% Designer: Shuyuan Fan
% Institute: ICS of TUHH
% shuyuan.fan@tuhh.de

clc

%% system matrix
% model from paper "Design and Flight testing evaluation of formation control laws (2006)"
% https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=1709935
A = [0.430   0.094   -1.030   0.237;...
    -67.334  -7.949   5.640      0;...
    20.533    -0.655  -1.996    0;...
       0        1        0       0];

B = [0.272  -0.771;...
     -101.845  33.474;...
     -6.261   -24.363;...
       0     0];

%% Initial Condition rho = 0
% fc = (beta * qmin *rho + eta*qmax)/(beta*rho + eta)
q1min = 0.05; q1max = 10; betaq1 = 1; etaq1 =  0.01; 
q2min = 0.05; q2max = 10; betaq2 = 1; etaq2 = 0.01;
q3min = 0.05; q3max = 10; betaq3 = 1; etaq3 =  0.01;
q4min = 0.05; q4max = 10; betaq4 = 1; etaq4 =  0.01;
Fcqr = [q1min,q1max,betaq1,etaq1,q2min,q2max,betaq2,etaq2,...
        q3min,q3max,betaq3,etaq3,q4min,q4max,betaq4,etaq4];
Fcqr = reshape(Fcqr,[16,1]);

% Q(rho=0), R(rho=0)
Qc0 = diag([q1max,q2max,q3max,q4max]);
Rc0 = diag([1,1]);

%caculate the initial p0 for rho=0 (all x=0)
[Kc0,Pc0,~] = lqr(A,B,Qc0,Rc0);

% Baseline Qb1, Rb1
Qb = diag([1,1,1,1]);
Rb = diag([1,1]);
[Kb,Pb,~] = lqr(A,B,Qb,Rb);


% Baseline Qb2, Rb2
Qb2 = diag([1,1,1,2]);
Rb2 = diag([1,1]);
[Kb2,Pb2,~] = lqr(A,B,Qb2,Rb2);


% caculate P(rho)
rhospan = 0:0.01:10;
Pc0_r = reshape(Pc0',[16,1]);
Pc0_r_ag = [Pc0_r;Fcqr];

[rho,P]=ode45(@dpdx_case2,rhospan,Pc0_r_ag);
x0 = [0;0;0;pi/2];

% when perd = 0, no perturbation
% when perd \ne 0, perturbation = [0,0,0,perd*sin(10x)]
perd = 0;









