Rs = [0.2 0.5 1 1.5 2]*1e5; % possible values of R
C = 0.002;
lambdap = 3e6;
M = 2;


% Panel A
rho_A = 2e-5;
N_A = 10;
hash_solo_A = h_rate_solo(C,Rs,rho_A);
hash_mc_A = h_rate_mc(C,M,N_A,Rs,rho_A,lambdap);
hash_full_A = h_rate_full(C,N_A,Rs,rho_A);


subplot(2,2,1)
plot(Rs,hash_solo_A,'-d','Color', 'black')
xlabel('$R$','Interpreter','latex')
ylabel('$\Lambda$','Interpreter','latex')
ylim([0 10*1e7])
xticks(Rs)
yticks((0:10)*1e7)
hold on

plot(Rs,hash_full_A,'--*','Color', 'black')
plot(Rs,hash_mc_A,'-.o','Color', 'black')


legend('Solo','Full Risk Sharing', 'Equilibrium','Location','northwest')
title('A')
hold off

% Panel B
rho_B = 1e-5;
N_B = 10;

hash_solo_B = h_rate_solo(C,Rs,rho_B);
hash_mc_B = h_rate_mc(C,M,N_B,Rs,rho_B,lambdap);
hash_full_B = h_rate_full(C,N_B,Rs,rho_B);


subplot(2,2,2)
plot(Rs,hash_solo_B,'-d','Color', 'black')
xlabel('$R$','Interpreter','latex')
ylabel('$\Lambda$','Interpreter','latex')
ylim([0 10*1e7])
xticks(Rs)
yticks((0:10)*1e7)
hold on

plot(Rs,hash_full_B,'--*','Color', 'black')
plot(Rs,hash_mc_B,'-.o','Color', 'black')


legend('Solo','Full Risk Sharing', 'Equilibrium','Location','northwest')
title('B')
hold off


% Panel C
rho_C = 2e-5;
N_C = 100;

hash_solo_C = h_rate_solo(C,Rs,rho_C);
hash_mc_C = h_rate_mc(C,M,N_C,Rs,rho_C,lambdap);
hash_full_C = h_rate_full(C,N_C,Rs,rho_C);

subplot(2,2,3)
plot(Rs,hash_solo_C,'-d','Color', 'black')
xlabel('$R$','Interpreter','latex')
ylabel('$\Lambda$','Interpreter','latex')
ylim([0 10*1e7])
xticks(Rs)
yticks((0:10)*1e7)
hold on

plot(Rs,hash_full_C,'--*','Color', 'black')
plot(Rs,hash_mc_C,'-.o','Color', 'black')


legend('Solo','Full Risk Sharing', 'Equilibrium','Location','northwest')
title('C')
hold off


% Panel D
rho_D = 1e-5;
N_D = 100;

hash_solo_D = h_rate_solo(C,Rs,rho_D);
hash_mc_D = h_rate_mc(C,M,N_D,Rs,rho_D,lambdap);
hash_full_D = h_rate_full(C,N_D,Rs,rho_D);

subplot(2,2,4)
plot(Rs,hash_solo_D,'-d','Color', 'black')
xlabel('$R$','Interpreter','latex')
ylabel('$\Lambda$','Interpreter','latex')
ylim([0 10*1e7])
xticks(Rs)
yticks((0:10)*1e7)
hold on

plot(Rs,hash_full_D,'--*','Color', 'black')
plot(Rs,hash_mc_D,'-.o','Color', 'black')


legend('Solo','Full Risk Sharing', 'Equilibrium','Location','northwest')
title('D')
hold off


