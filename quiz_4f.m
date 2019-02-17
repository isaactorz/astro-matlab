format long;
MAXITER = 100;  % in case the loop does not converge
TOL = 1e-7;    % tolerance for convergence
xn = -1;         % first guess
fn = xn^3+7*cos(xn);
iter = 1;       
    while(abs(fn) > TOL)
        xn = xn - fn/(3*xn^2-7*sin(xn));
        fn = xn^3+7*cos(xn);
        iter = iter+1;
        if(iter>=MAXITER)
            error('Did not converge');
            exit
        end
    end
xn