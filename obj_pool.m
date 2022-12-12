function  y = obj_pool(fm, lambda_pm, f_v_other, lambda_p_other,C,N,R,rho)

	% a pool manager's objective function
	% lambda_p: a vector that stores each pool's passive hash rate
	% f_v_other: fees charged by other pools

	lambda_p = [lambda_pm lambda_p_other];
	f_v = [fm f_v_other];
	global_hash = g_lambda_eqm(lambda_p,f_v, C,N,R,rho);
	if lambda_m(C,N,R,rho,global_hash, lambda_pm, fm)==0
		y = -10*exp(fm); % rule out the trivial case that no miner joins the pool 
	else
		ind = R.*(1-fm)./(C.*global_hash);
		second_term = (ind>0).*(rho.*R.*(1-fm)./(rho.*R.*(1-fm) - N.*log(ind)));
		y = lambda_pm.*(1-exp(-rho.*R.*fm))./global_hash.*max(1, second_term);
	end
end