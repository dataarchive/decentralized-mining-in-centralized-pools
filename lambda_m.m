function  y = lambda_m(C,N,R,rho,lambda_g, lambda_pm, fm)
	
	% an active miner's optimal decision given the global hash rate, fees and passive hash rates

	ind = R.*(1-fm)./(C.*lambda_g);
	if lambda_g<=R./C.*(1-fm).*exp(-rho.*R.*(1-fm)./N)
		y=1e10; 
	else
		y = lambda_pm.*((ind>0).*max(0,log(ind)./(rho.*R.*(1-fm)-N.*log(ind))));
	end
end