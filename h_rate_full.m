function  y = h_rate_full(C,N,R,rho)
	% the global hash rate under full risk sharing
	y = R./C.*exp(-rho.*R./N);
end