function y = h_rate_solo(C,R,rho)
	% the global hash rate under solo mining
	y = R./C.*exp(-rho.*R);
end

	