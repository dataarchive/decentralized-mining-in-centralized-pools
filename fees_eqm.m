function  y = fees_eqm(lambda_p, C,N,R,rho)

	% find the eqm fees
	% this function minizes the distance computed by fees_obj
	% the "eqm distance" should be zero
	% lambda_p: a vector that stores each pool's passive hash rate

	l = length(lambda_p); % number of pools
	fee_lb = zeros(1,l); % fees' lower bound
	fee_ub = ones(1,l); % fees' upper bound
	f0 = zeros(1,l); % my initial guess


	yy = @(f_v) fees_obj(lambda_p,f_v, C,N,R,rho);


	[y,~] = patternsearch(yy,f0,[],[],[],[],fee_lb,fee_ub);
end