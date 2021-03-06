function [fx,Jx] = buildJaco(y)
%% Function to spit out Jacobian and f(y)
%
% -2+h^2                   1+0.5*(y(i+1)-y(i-1)               0             0          
% 1 - 0.5*(y(i+1)-y(i-1)   -2+h^2                 1+0.5*(y(i+1)-y(i-1)        0              
%         0                1 - 0.5*(y(i+1)-y(i-1)     -2+h^2               1+0.5*(y(i+1)-y(i-1)
%
%    etc...
%
%   so first we get a diag matrix that gives us the side
%   0.5*(y(i+1)-y(i-1)) columns or diags.   Do this by
%   using a :
%   -1  0  1  0  0  0      y0
%   0  -1  0  1  0  0  *   y1
%   0   0  -1 0  1  0      y2
%  
%   Then using above = s
%   do s*y
%
%   then to get full jacobian do a matrix with three diags
%     the centre is constant while the two sides are 1-s and 1+s


n = length(y) - 2;
h = 1/(n+1);
c = ones(n,1)*(-2+h^2);

% do diag matrix of 0.5*(y(i+1)-y(i-1)) for Jacobian
sdiags = spdiags([-0.5*ones(n,1),0.5*ones(n,1)],[0,2],n,n+2);
s = sdiags*y;
Jx = (1/(h^2))*spdiags([1+s,c,1-s],[-1,0,1],n,n);
Jx = Jx';

s2diags = spdiags([ones(n,1),-2*ones(n,1),ones(n,1)],[0,1,2],n,n+2);

fx = 1/h^2*(s2diags*y) + (s/h).^2 + y(2:end-1) - log(1 + [1:n]'*h); 










