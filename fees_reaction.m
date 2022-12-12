function  y = fees_reaction(lambda_p, f_v,C,N,R,rho)

	% optimal fees given current fees (aka the reaction function)
	% lambda_p: a vector that stores each pool's passive hash rate
	% f_v_other: other managers' strategies
	
	l = length(lambda_p); % number of pools
	y = zeros(l,1); % to store pools' optimal reactions

	for ii = 1:l
		f_v_other = f_v(1:end~=ii);
		lambda_pm = lambda_p(ii);
		lambda_p_other = lambda_p(1:end~=ii);
		yy = @(fm) -obj_pool(fm, lambda_pm, f_v_other, lambda_p_other,C,N,R,rho);

		y(ii) = fminbnd(yy,0,1);
	end
end