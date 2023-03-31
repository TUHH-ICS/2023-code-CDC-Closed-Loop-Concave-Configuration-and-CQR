%% Name: Differetial equation of Case 2 for CQR
% Description: This file is designed to construct the differential equation
% of SDRE to solve the optimal P(\rho)
% Designer: Shuyuan Fan
% Institute: ICS of TUHH
% shuyuan.fan@tuhh.de

function dp = dpdx_case2(rho,P)
% fcs(kmin,kmax,beta,eta,rho)
% (beta*kmin*rho+kmax*eta)/(beta*rho+eta)

%% system matrix
A = [0.430   0.094   -1.030   0.237;...
    -67.334  -7.949   5.640      0;...
    20.533    -0.655  -1.996    0;...
       0        1        0       0];

B = [0.272  -0.771;...
     -101.845  33.474;...
     -6.261   -24.363;...
       0     0];

%% Q matrix
Fcqr = P(17:32);
q1min = Fcqr(1); q1max = Fcqr(2); betaq1 = Fcqr(3); etaq1 =  Fcqr(4); 
q2min = Fcqr(5); q2max = Fcqr(6); betaq2 = Fcqr(7); etaq2 = Fcqr(8);
q3min = Fcqr(9); q3max = Fcqr(10); betaq3 = Fcqr(11); etaq3 =  Fcqr(12);
q4min = Fcqr(13); q4max = Fcqr(14); betaq4 = Fcqr(15); etaq4 =  Fcqr(16);
Fcqr = reshape(Fcqr,[16,1]);

q1 = fcs(rho,q1min,q1max,betaq1,etaq1);
q2 = fcs(rho,q2min,q2max,betaq2,etaq2);
q3 = fcs(rho,q3min,q3max,betaq3,etaq3);
q4 = fcs(rho,q4min,q4max,betaq4,etaq4);

Q = diag([q1,q2,q3,q4]);

%% R
R = diag([1,1]);


P_ = P(1:16);

%% Solving Recaati equation
p_ = reshape(P_,[4,4]);
p = p_';
F = Q-p*B*R*B'*p+ A'*p+p*A;
%dp = [F(1,1);F(1,2);F(2,1);F(2,2)];
dp = reshape(F',[16,1]);
dp  = [dp;Fcqr];

end