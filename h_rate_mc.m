function  y = h_rate_mc(C,M,N,R,rho,lambdap)
	% the global hash rate under monopolistic competition

	l = length(R);
	y = zeros(l,1);
	for ii = 1:l
		RR = R(ii);
		fstar = f_star(C,M,N,RR,rho,lambdap);
		y(ii) = M.*lambdap./z_fun(fstar,M,N,RR,rho);
	end
end