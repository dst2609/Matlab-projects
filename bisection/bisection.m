% DEVARSH THAKER
% FINAL PROJECT Q1
% function [r fr] = bisection(f,a,b,k,TOL)

% initialize the function:
function [r, fr] = bisection(f,a,b,k,tol)

%check if f(a)f(b)<0
if sign(f(a))*sign(f(b)) >= 0
  error('f(a)f(b)<0 not satisfied!') %condition failed so exit with error
end

%variables for f(a) and f(b)
fa=f(a);
fb=f(b);
%need to run at most k times so need a counter
count = 0;

%using eps as an error bound and at most k iterations
while ((b-a)/2>=tol) && (count < k)
  %get c -midpoint  
  c=(a+b)/2;
  fc=f(c);
  if fc == 0              % end if c is the solution
    break
  end
  if sign(fc)*sign(fa)<0  %a and c make the new interval
    b=c;
    fb=fc;
  else                    %c and b make the new interval
    a=c;fa=fc;
  end
  count = count+1;
end
r=(a+b)/2;               %new midpoint
fr = f(r);
%print out r and f(r)
fprintf('r = %i\n',r)
fprintf('f(r) = %i\n', fr)
end
