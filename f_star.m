function  y = f_star(C,M,N,R,rho,lambdap)
	%  find f*
    yy = @(f) ((1-f)*z_fun(f,M,N,R,rho)>0).*(rho.*R.*(1-f).*(1-z_fun(f,M,N,R,rho))-N.*log(R.*(1-f).*z_fun(f,M,N,R,rho)./(C.*M.*lambdap))) + ((1-f)*z_fun(f,M,N,R,rho)<=0).*(-99);
    x0 = [0.00001,0.99999]; % the domain
	y = fzero(yy, x0);
end