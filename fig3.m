rhos = [2 4 6 8 10 12 14 16]*1e-5; % possible values of rho
Cs = [2 2.5 3 3.5 4 4.5 5 5.5]*1e-3; % possible values of C
rho_BD = 2e-5; % the value of rho for Panels B and D
C_AC = 0.002; % the value of C for Panels A and C
lambda_p = [3e6 2e6 1e6];
R = 1e5;
N = 100;


% Panel A

nr_sample = length(rhos);
fee1r = zeros(nr_sample,1);
fee2r = zeros(nr_sample, 1);
fee3r = zeros(nr_sample, 1);

for ii = 1:nr_sample
	fees = fees_eqm(lambda_p, C_AC,N,R,rhos(ii));
	fee1r(ii) = fees(1);
	fee2r(ii) = fees(2);
	fee3r(ii) = fees(3);
end

subplot(2,2,1)

plot(rhos,fee1r,'-d','Color', 'black')
xlabel('Risk Aversion $\rho$','Interpreter','latex')
ylabel('Fee', 'Interpreter','latex')
ylim([0 0.035])
xlim([2e-5 16e-5])
xticks(rhos)
hold on

plot(rhos,fee2r,'--*','Color', 'black')
plot(rhos,fee3r,'-.o','Color', 'black')


legend('Pool 1','Pool 2', 'Pool 3','Location','northwest')
title('A')
hold off

% Panel B

nc_sample = length(Cs);
fee1c = zeros(nc_sample,1);
fee2c = zeros(nc_sample,1);
fee3c = zeros(nc_sample,1);

for jj=1:nc_sample
	fees = fees_eqm(lambda_p, Cs(jj),N,R,rho_BD);
	fee1c(jj) = fees(1);
	fee2c(jj) = fees(2);
	fee3c(jj) = fees(3);
end

subplot(2,2,2)
plot(Cs,fee1c,'-d','Color', 'black')
xlabel('Mining Cost $C$','Interpreter','latex')
ylabel('Fee','Interpreter','latex')
ylim([0 0.035])
xlim([Cs(1) Cs(end)])
xticks(Cs)
hold on

plot(Cs,fee2c,'--*','Color', 'black')
plot(Cs,fee3c,'-.o','Color', 'black')


legend('Pool 1','Pool 2', 'Pool 3','Location','northwest')
title('B')
hold off


% Panel C

growth1r = zeros(nr_sample,1);
growth2r = zeros(nr_sample,1);
growth3r = zeros(nr_sample,1);

for kk = 1:nr_sample
	global_hash = g_lambda_eqm(lambda_p,[fee1r(kk) fee2r(kk) fee3r(kk)], C_AC,N,R,rhos(kk));
	growth1r(kk) = N*lambda_m(C_AC,N,R,rhos(kk),global_hash, lambda_p(1), fee1r(kk))/lambda_p(1);
	growth2r(kk) = N*lambda_m(C_AC,N,R,rhos(kk),global_hash, lambda_p(2), fee2r(kk))/lambda_p(2);
	growth3r(kk) = N*lambda_m(C_AC,N,R,rhos(kk),global_hash, lambda_p(3), fee3r(kk))/lambda_p(3);
end


subplot(2,2,3)

plot(rhos,growth1r,'-d','Color', 'black')
xlabel('Risk Aversion $\rho$','Interpreter','latex')
ylabel('Growth', 'Interpreter','latex')
ylim([0 15])
xlim([2e-5 16e-5])
xticks(rhos)
hold on

plot(rhos,growth2r,'--*','Color', 'black')
plot(rhos,growth3r,'-.o','Color', 'black')


legend('Pool 1','Pool 2', 'Pool 3','Location','northwest')
title('C')
hold off



% Panel D

growth1c = zeros(nc_sample,1);
growth2c = zeros(nc_sample,1);
growth3c = zeros(nc_sample,1);

for ll = 1:nc_sample
	global_hash = g_lambda_eqm(lambda_p,[fee1c(ll) fee2c(ll) fee3c(ll)], Cs(ll),N,R,rho_BD);
	growth1c(ll) = N*lambda_m(Cs(ll),N,R,rho_BD,global_hash, lambda_p(1), fee1c(ll))/lambda_p(1);
	growth2c(ll) = N*lambda_m(Cs(ll),N,R,rho_BD,global_hash, lambda_p(2), fee2c(ll))/lambda_p(2);
	growth3c(ll) = N*lambda_m(Cs(ll),N,R,rho_BD,global_hash, lambda_p(3), fee3c(ll))/lambda_p(3);
end


subplot(2,2,4)

plot(Cs,growth1c,'-d','Color', 'black')
xlabel('Mining Cost $C$','Interpreter','latex')
ylabel('Growth', 'Interpreter','latex')
ylim([0 15])
xlim([Cs(1) Cs(end)])
xticks(Cs)
hold on

plot(Cs,growth2c,'--*','Color', 'black')
plot(Cs,growth3c,'-.o','Color', 'black')


legend('Pool 1','Pool 2', 'Pool 3','Location','northwest')
title('D')
hold off
