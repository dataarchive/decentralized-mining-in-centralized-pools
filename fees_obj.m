function  y = fees_obj(lambda_p,f_v, C,N,R,rho)

	% the "distance" between the current fees and the "future" fees 
	% lambda_p: a vector that stores each pool's passive hash rate

	dif = fees_reaction(lambda_p, f_v,C,N,R,rho) - f_v';
	y = sumsqr(dif);
end