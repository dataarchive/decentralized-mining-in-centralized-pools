function  y = g_lambda_obj(lambda_p,f_v, C,N,R,rho, lambda_g)
	% the "distance" between the current global hash rate and the "future" global hash rate 
	% lambda_p: a vector that stores each pool's passive hash rate
	% f_v: fees charged by pools

	y = (g_lambda(lambda_p,f_v, C,N,R,rho,lambda_g) - lambda_g).^2;


end