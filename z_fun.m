function z = z_fun(f, M, N, R, rho)
	% define function z
	numerator = (M-1).*(1-exp(-rho*R*f)).*(N-rho.*R.*(1-f));
    denominator = M.*exp(-rho.*R.*f).*rho.^2.*R.^2.*(1-f) - (M-1).*(1-exp(-rho.*R.*f));
    z = numerator./denominator;
end

	