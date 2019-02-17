% D = keplersolve_parabola(root_p,e)
function D = keplersolve_p(p, tof, mu)
    MAXITER = 100;  % in case the loop does not converge
    TOL = 1e-11;    % tolerance for convergence
    Dn = sqrt(p);         % first guess
    fn = (p*Dn+Dn^3/3)-2*sqrt(mu)*tof;
    iter = 1;       %count the iterations
    while(abs(fn) > TOL)
        Dn = Dn - fn/(p+Dn^2);
        fn = (p*Dn+Dn^3/3)-2*sqrt(mu)*tof;
        iter = iter+1;
        if(iter>=MAXITER)
            error('Did not converge');
            exit
        end
    end
    D = Dn;