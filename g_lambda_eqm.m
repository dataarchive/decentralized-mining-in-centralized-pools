function  y = g_lambda_eqm(lambda_p,f_v, C,N,R,rho)

	% the "eqm" global hash rate given pools' fees and passive hash rates
	% this function minimizes the distance
	% the "eqm distance" should be zero
	% lambda_p: a vector that stores each pool's passive hash rate
	% f_v: fees charged by pools


	yy = @(h) g_lambda(lambda_p,f_v, C,N,R,rho,h) - h;
	lb = min(R./C.*(1-f_v).*exp(-rho.*R.*(1-f_v)./N));
	ub = max(R./C.*(1-f_v))+1e7;
	if yy(lb).*yy(ub)<0
		y = fzero(yy, [lb ub]);
	else
		y = sum(lambda_p);
	end
end