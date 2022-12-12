function  y = g_lambda(lambda_p,f_v, C,N,R,rho,lambda_g)

	% the global hash rate will be given the current global hash rate
	% lambda_p: a vector stores  pools' passive hash rate
	% f_v: fees charged by pools
	
	l = length(f_v);
	active_hash = 0;
	for ii = 1:l
		temp = lambda_m(C,N,R,rho,lambda_g,lambda_p(ii),f_v(ii));
		active_hash = active_hash + temp;
	end
	y = sum(lambda_p) + N.*active_hash;
end