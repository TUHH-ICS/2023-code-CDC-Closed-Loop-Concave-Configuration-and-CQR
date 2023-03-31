%% Name: Plot file of Case 1
% Description: This file is designed to graph the simulation results of
% Case 1
% Designer: Shuyuan Fan
% Institute: ICS of TUHH
% shuyuan.fan@tuhh.de

%% 2*2 system
% x1
figure(1)
tiledlayout(4,1)
nexttile(1)
plot(out.tout,out.states.Data(1,:),'r',...
    out.tout,out.states.Data(3,:),'b',...
    out.tout,out.states.Data(5,:),'k',...
    out.tout,out.states.Data(2,:),'r:',...
    out.tout,out.states.Data(4,:),'b:',...
    out.tout,out.states.Data(6,:),'k:',...
    'linewidth',3);
ylabel('$x$','interpreter','latex','fontsize',100);
xlabel('Time, sec','fontsize',100);
ylim([-0.5,2])
%xlim([0,10])
grid on
%set(gca, 'XMinorGrid','on');
set(gca,'color',[1,1,1],'LineWidth',2,'fontsize',30)
%legend('$Concave-Centralized$','$Concave-Distributed$','$Linear-Baseline$','fontsize',20,'interpreter','latex','NumColumns',1)
legend('CQR-$x_1$','CCC-$x_1$','LQR-$x_1$','CQR-$x_2$','CCC-$x_2$','LQR-$x_2$','fontsize',20,'interpreter','latex','NumColumns',2)
legend('boxoff')
title('Response of $x$',Interpreter='latex')


nexttile(2)
plot(out.tout,out.inputs.Data(1,:),'r',...
    out.tout,out.inputs.Data(3,:),'b',...
    out.tout,out.inputs.Data(5,:),'k',...
    out.tout,out.inputs.Data(2,:),'r:',...
    out.tout,out.inputs.Data(4,:),'b:',...
    out.tout,out.inputs.Data(6,:),'k:',...
    'linewidth',3);
ylabel('$u$','interpreter','latex','fontsize',100);
xlabel('Time, sec','fontsize',100);
ylim([-1.5,1])
%xlim([0,10])
grid on
%set(gca, 'XMinorGrid','on');
set(gca,'color',[1,1,1],'LineWidth',2,'fontsize',30)
%legend('$Concave-Centralized$','$Concave-Distributed$','$Linear-Baseline$','fontsize',20,'interpreter','latex','NumColumns',1)
legend('CQR-$u_1$','CCC-$u_1$','LQR-$u_1$','CQR-$u_2$','CCC-$u_2$','LQR-$u_2$','fontsize',20,'interpreter','latex','NumColumns',2)
legend('boxoff')
title('Response of $u$',Interpreter='latex')

nexttile(3)
plot(out.tout,out.statesnorm.Data(:,1),'r',...
    out.tout,out.statesnorm.Data(:,2),'b',...
    out.tout,out.statesnorm.Data(:,3),'k',...
    'linewidth',3);
ylabel('$\sqrt{x^\top x}$','interpreter','latex','fontsize',100);
xlabel('Time, sec','fontsize',100);
ylim([-0.2,2.5])
%xlim([0,10])
grid on
%set(gca, 'XMinorGrid','on');
set(gca,'color',[1,1,1],'LineWidth',2,'fontsize',30)
%legend('$Concave-Centralized$','$Concave-Distributed$','$Linear-Baseline$','fontsize',20,'interpreter','latex','NumColumns',1)
legend('CQR-$\sqrt{x^\top x}$','CCC-$\sqrt{x^\top x}$','LQR-$\sqrt{x^\top x}$','fontsize',20,'interpreter','latex','NumColumns',1)
legend('boxoff')
title('Response of $\sqrt{x^\top x}$',Interpreter='latex')


nexttile(4)
plot(out.tout,out.inputsnorm.Data(:,1),'r',...
    out.tout,out.inputsnorm.Data(:,2),'b',...
    out.tout,out.inputsnorm.Data(:,3),'k',...
    'linewidth',3);
ylabel('$\sqrt{u^\top u}$','interpreter','latex','fontsize',100);
xlabel('Time, sec','fontsize',100);
ylim([-0.2,2])
%xlim([0,10])
grid on
%set(gca, 'XMinorGrid','on');
set(gca,'color',[1,1,1],'LineWidth',2,'fontsize',30)
%legend('$Concave-Centralized$','$Concave-Distributed$','$Linear-Baseline$','fontsize',20,'interpreter','latex','NumColumns',1)
legend('CQR-$\sqrt{u^\top u}$','CCC-$\sqrt{u^\top u}$','LQR-$\sqrt{u^\top u}$','fontsize',20,'interpreter','latex','NumColumns',1)
legend('boxoff')
title('Response of $\sqrt{u^\top u}$',Interpreter='latex')




