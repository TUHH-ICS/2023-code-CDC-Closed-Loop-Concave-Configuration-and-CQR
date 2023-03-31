%% Name: Plot file of Case 1
% Description: This file is designed to graph the simulation results of
% Case 1
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


%% 4*2 system
% 
figure(1)
tiledlayout(1,2)
nexttile(1)
plot(out.tout,out.states.Data(4,:),'r',...
    out.tout,out.states.Data(8,:),'b',...
    out.tout,out.states.Data(12,:),'k',...
    'linewidth',3);
ylabel('$x_4$','interpreter','latex','fontsize',100);
xlabel('Time, sec','fontsize',100);
ylim([-0.2,1.7])
xlim([0,5])
grid on
%set(gca, 'XMinorGrid','on');
set(gca,'color',[1,1,1],'LineWidth',2,'fontsize',30)
%legend('$Concave-Centralized$','$Concave-Distributed$','$Linear-Baseline$','fontsize',20,'interpreter','latex','NumColumns',1)
legend('CQR-$x_4$','LQR1-$x_4$','LQR2-$x_4$','fontsize',20,'interpreter','latex','NumColumns',1)
legend('boxoff')
title('Response of $x_4$',Interpreter='latex')

nexttile(2)
plot(out.tout,out.statesnorm.Data(:,1),'r',...
    out.tout,out.statesnorm.Data(:,2),'b',...
    out.tout,out.statesnorm.Data(:,3),'k',...
    'linewidth',3);
ylabel('$||x||$','interpreter','latex','fontsize',100);
xlabel('Time, sec','fontsize',100);
ylim([-0.2,3])
xlim([0,5])
grid on
%set(gca, 'XMinorGrid','on');
set(gca,'color',[1,1,1],'LineWidth',2,'fontsize',30)
%legend('$Concave-Centralized$','$Concave-Distributed$','$Linear-Baseline$','fontsize',20,'interpreter','latex','NumColumns',1)
legend('CQR-$||x||$','LQR1-$||x||$','LQR2-$||x||$','fontsize',20,'interpreter','latex','NumColumns',1)
legend('boxoff')
title('Response of $||x||$',Interpreter='latex')

%%
figure(2)
tiledlayout(1,3)
nexttile(1)
plot(out.tout,out.inputs.Data(1,:),'r',...
    out.tout,out.inputs.Data(2,:),'b',...
    'linewidth',3);
ylabel('$u$','interpreter','latex','fontsize',100);
xlabel('Time, sec','fontsize',100);
ylim([-1,2.5])
xlim([0,5])
grid on
%set(gca, 'XMinorGrid','on');
set(gca,'color',[1,1,1],'LineWidth',2,'fontsize',30)
%legend('$Concave-Centralized$','$Concave-Distributed$','$Linear-Baseline$','fontsize',20,'interpreter','latex','NumColumns',1)
legend('CQR-$u_1$','CQR-$u_2$','fontsize',20,'interpreter','latex','NumColumns',1)
legend('boxoff')
title('Response of $u$',Interpreter='latex')

nexttile(2)
plot(out.tout,out.inputs.Data(3,:),'r',...
    out.tout,out.inputs.Data(4,:),'b',...
    'linewidth',3);
ylabel('$u$','interpreter','latex','fontsize',100);
xlabel('Time, sec','fontsize',100);
ylim([-1,2.5])
xlim([0,5])
grid on
%set(gca, 'XMinorGrid','on');
set(gca,'color',[1,1,1],'LineWidth',2,'fontsize',30)
%legend('$Concave-Centralized$','$Concave-Distributed$','$Linear-Baseline$','fontsize',20,'interpreter','latex','NumColumns',1)
legend('LQR1-$u_1$','LQR1-$u_2$','fontsize',20,'interpreter','latex','NumColumns',1)
legend('boxoff')
title('Response of $u$',Interpreter='latex')

nexttile(3)
plot(out.tout,out.inputs.Data(5,:),'r',...
    out.tout,out.inputs.Data(6,:),'b',...
    'linewidth',3);
ylabel('$u$','interpreter','latex','fontsize',100);
xlabel('Time, sec','fontsize',100);
ylim([-1,2.5])
xlim([0,5])
grid on
%set(gca, 'XMinorGrid','on');
set(gca,'color',[1,1,1],'LineWidth',2,'fontsize',30)
%legend('$Concave-Centralized$','$Concave-Distributed$','$Linear-Baseline$','fontsize',20,'interpreter','latex','NumColumns',1)
legend('LQR2-$u_1$','LQR2-$u_2$','fontsize',20,'interpreter','latex','NumColumns',1)
legend('boxoff')
title('Response of $u$',Interpreter='latex')





