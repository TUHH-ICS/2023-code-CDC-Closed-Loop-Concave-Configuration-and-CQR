%% Name: Concave factor
% Description: This file is a function of simplified concave factor
% Designer: Shuyuan Fan
% Institute: ICS of TUHH
% shuyuan.fan@tuhh.de

function fc = fcs(rho,kmin,kmax,beta,eta)
%FCS simplified concave factor
% fc = (beta*kmin*rho+eta*kmax)/(beta*rho+eta)

fc = (beta*kmin*rho+eta*kmax)/(beta*rho+eta);
end

