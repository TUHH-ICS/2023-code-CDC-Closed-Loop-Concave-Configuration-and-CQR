%% Name: Plot file of the concave factor
% Description: This file is designed to graph the concave factor
% Designer: Shuyuan Fan
% Institute: ICS of TUHH
% shuyuan.fan@tuhh.de


rho_0 = 10;
k_max = 10;
k_min = 1 ;


[beta,rho]=meshgrid(0.1:0.1:10,0:0.005:10);
figure(1)
tiledlayout(2,2)
nexttile
eta =0.05; 
fc1 = (k_min*beta.*rho+k_max*eta)./(beta.*rho+eta);
s=surfc(rho,beta,fc1,'FaceAlpha',1,'EdgeColor','None');
colorbar
colormap("jet")
view([127.5,30])
ylabel('$\beta$','interpreter','latex','fontsize',20);
xlabel('$\rho$','interpreter','latex','fontsize',20);
zlabel('$f_c$','interpreter','latex','fontsize',20);
set(gca,'color',[1,1,1],'LineWidth',2,'fontsize',20)
title('$\gamma=0.05$','interpreter','latex','fontsize',20)

nexttile
eta =0.2;
fc2 = (k_min*beta.*rho+k_max*eta)./(beta.*rho+eta);
s=surfc(rho,beta,fc2,'FaceAlpha',1,'EdgeColor','None');
colorbar
colormap("jet")
view([127.5,30])
ylabel('$\beta$','interpreter','latex','fontsize',20);
xlabel('$\rho$','interpreter','latex','fontsize',20);
zlabel('$f_c$','interpreter','latex','fontsize',20);
set(gca,'color',[1,1,1],'LineWidth',2,'fontsize',20)
title('$\eta=0.2$','interpreter','latex','fontsize',20)

nexttile
eta =0.5;
fc3 = (k_min*beta.*rho+k_max*eta)./(beta.*rho+eta);
s=surfc(rho,beta,fc3,'FaceAlpha',1,'EdgeColor','None');
colorbar
colormap("jet")
view([127.5,30])
ylabel('$\beta$','interpreter','latex','fontsize',20);
xlabel('$\rho$','interpreter','latex','fontsize',20);
zlabel('$f_c$','interpreter','latex','fontsize',20);
set(gca,'color',[1,1,1],'LineWidth',2,'fontsize',20)
title('$\eta=0.5$','interpreter','latex','fontsize',20)


nexttile
eta =1; 
fc4 = (k_min*beta.*rho+k_max*eta)./(beta.*rho+eta);
s=surfc(rho,beta,fc4,'FaceAlpha',1,'EdgeColor','None');
colorbar
colormap("jet")
view([127.5,30])
ylabel('$\beta$','interpreter','latex','fontsize',20);
xlabel('$\rho$','interpreter','latex','fontsize',20);
zlabel('$f_c$','interpreter','latex','fontsize',20);
set(gca,'color',[1,1,1],'LineWidth',2,'fontsize',20)
title('$\eta=1$','interpreter','latex','fontsize',20)




