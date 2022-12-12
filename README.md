# Leifu Zhang' coding sample

These codes replicate Figures 2 and 3 in Cong, He, and Li (2021) through MATLAB. Please change your current MATLAB folder to the folder that contains my coding files. In MATLAB’s Command Window, enter the following command:

\>\> cd 'path/CHL2021'

where path/CHL2021 is the full path of the folder that contains my coding files on your computer.

## Replicating Figure 2

Enter

\>\> fig2


## Files Related to Figures 2 and 2'

| h\_rate\_solo.m | Computes the global hash rate under solo mining. Reference (on page 21): . |
| --- | --- |
| h\_rate\_full.m | Computes the global hash rate under full risk sharing. Reference (on pages 17 & 21): |
| h\_rate\_mc.m | Computes the global hash rate under monopolistic competition with pools of homogeneous size. Reference (on page 22): |
| f\_star.m | Computes , which is the solution to
See page 22. |
| z\_fun.m | Computes
See page 22. |

#

## Replicating Figure 3

Enter

\>\> fig3

## Files Related to Figure 3

| lambda\_m.m | Computes an active miner's optimal decision given the global hash rate, pools' fees, and passive hash rates. |
| --- | --- |
| g\_lambda.m | Computes the global hash rate will be, given the current global hash rate, pools' fees, and passive hash rates. The global hash rate's "reaction function." |
| g\_lambda\_obj.m | Computes the "distance" between the current global hash rate and the "future" global hash rate. |
| g\_lambda\_eqm.m | Computes the "eqm" global hash rate given pools' fees and passive hash rates. This function minimizes the "distance" computed by g\_lambda\_obj.m. |
| obj\_pool.m | Computes a pool manager's objective function value. |
| fees\_reaction.m | Computes pools' optimal fees given current fees (aka the reaction function). This function maximizes obj\_pool.m. |
| fees\_obj.m | Computes the "distance" between the current fees and the "future" fees. |
| fees\_eqm.m | Computes the eqm fees. This function minimizes the "distance" computed by fees\_obj.m. |


## Reference
Cong, L.W., He, Z. and Li, J., 2021. Decentralized mining in centralized pools. *Review of Financial Studies*, 34(3), pp.1191-1235.


