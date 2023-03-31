%% Name: Concave factor
% Description: This file is a function of simplified concave factor
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

function fc = fcs(rho,kmin,kmax,beta,eta)
%FCS simplified concave factor
% fc = (beta*kmin*rho+eta*kmax)/(beta*rho+eta)

fc = (beta*kmin*rho+eta*kmax)/(beta*rho+eta);
end

