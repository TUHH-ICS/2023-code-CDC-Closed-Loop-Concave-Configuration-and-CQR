%% Name: Differetial equation of Case 1 for CQR
% Description: This file is designed to construct the differential equation
% of SDRE to solve the optimal P(\rho)
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



function dp = dpdx_case1(rho,P)
% fcs(kmin,kmax,beta,eta,rho)
% (beta*kmin*rho+kmax*eta)/(beta*rho+eta)
%system

A = [-1 1;-1 1];
B = [1, 1; 2,1];

% Q R
Fcqr = P(5:12);
q1min = Fcqr(1); q1max = Fcqr(2); betaq1 = Fcqr(3); etaq1 =  Fcqr(4); 
q2min = Fcqr(5); q2max = Fcqr(6); betaq2 = Fcqr(7); etaq2 = Fcqr(8);
Fcqr = reshape(Fcqr,[8,1]);

q1 = fcs(rho,q1min,q1max,betaq1,etaq1);
q2 = fcs(rho,q2min,q2max,betaq2,etaq2);

Q = diag([q1,q2]);

R = eye(2);

% Solving Ricaati Equation
p = [P(1) P(2);P(3) P(4)];
R_inv = inv(R);
F= Q-p*B*R_inv*B'*p+ A'*p+p*A;
dp = [F(1,1);F(1,2);F(2,1);F(2,2);Fcqr];

end
