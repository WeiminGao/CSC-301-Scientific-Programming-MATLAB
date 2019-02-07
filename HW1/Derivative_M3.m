%Problem 2, function [d,err] = Derivative(fname,a,delta,M3)
function [d,err] = Derivative(fname,a,delta,M3)

if nargin <= 4
   % No derivative bound supplied, so assume the
   % third derivative bound is 1.
   M3 = 1;
end
if nargin == 2
   % No function evaluation error supplied, so
   % set delta to eps.
   delta = eps;
end
% Compute optimum h and divided difference
hopt = (-12*delta/M3)^1/3;
d   = (feval(fname,a+hopt) - feval(fname,a-hopt))/(2*hopt); %new approximations.
err = 0; %the error of approximations C(h).
