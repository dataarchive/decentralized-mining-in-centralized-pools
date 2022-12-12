# Leifu Zhang' coding sample

These codes replicate Figures 2 and 3 in Cong, He, and Li (2021) through MATLAB. Please change your current MATLAB folder to the folder that contains my coding files. In MATLAB’s Command Window, enter the following command:

>> cd ‘path/CHL2020’

where path/CHL2020 is the full path of the folder that contains my coding files on your computer.

### Replicating Figure 2

Enter

>> fig2

## Files Related to Figures 2 and 2’

h_rate_solo.m	Computes the global hash rate under solo mining. Reference (on page 21): Λ_solo □(∶=)  R/C e^(-ρR).
h_rate_full.m	Computes the global hash rate under full risk sharing. Reference (on pages 17 & 21):Λ_full □(∶=)  R/C e^(-ρR/N).
h_rate_mc.m	Computes the global hash rate under monopolistic competition with pools of homogeneous size. Reference (on page 22):Λ_mc □(∶=)  (MΛ_p)/(z(f^*)).
f_star.m	Computes f^*, which is the solution to 
ρR(1-f)(1-z(f))=N ln⁡〖(R(1-f)z(f))/(CMΛ_p )〗.
See page 22.
z_fun.m	Computes 
z(f)□(∶=)  ((M-1)(1-e^(-ρRf) )[N-ρR(1-f)])/(Me^(-ρRf) ρ^2 R^2 (1-f)-(M-1)(1-e^(-ρRf) ) ).
See page 22.



### Replicating Figure 3

Enter

>> fig3
Files Related to Figure 3

lambda_m.m	Computes an active miner’s optimal decision given the global hash rate, pools’ fees, and passive hash rates. 
g_lambda.m	Computes the global hash rate will be, given the current global hash rate, pools’ fees, and passive hash rates. The global hash rate’s “reaction function.”
g_lambda_obj.m	Computes the “distance” between the current global hash rate and the “future” global hash rate.
g_lambda_eqm.m	Computes the “eqm” global hash rate given pools’ fees and passive hash rates. This function minimizes the “distance” computed by g_lambda_obj.m.
obj_pool.m	Computes a pool manager’s objective function value.
fees_reaction.m	Computes pools’ optimal fees given current fees (aka the reaction function). This function maximizes obj_pool.m.
fees_obj.m	Computes the “distance” between the current fees and the “future” fees.
fees_eqm.m	Computes the eqm fees. This function minimizes the “distance” computed by fees_obj.m.





