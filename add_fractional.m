% DEVARSH THAKER
% MATH-446 Dr. Sarah Khankan
% FINAL PROJECT Q2
% function i,f = AddFractional (x,y)

% initialize the function:
function [i, f] = add_fractional(x,y)

%i is default as 0
i = 0;
%get fraction for x
fracX = x * (2 .^ -(1:numel(x)).');
fracY = y * (2 .^ -(1:numel(y)).');
%add both fractions
z = fracX + fracY;

%after adding fraction if the fraction is in form 1.fff
%i will be 1
if (z-1)>=0
    i = 1;
    z = z - 1;
end

%change to binary and return
for k=1:5
    newZ = 2*z;
    if newZ==1
        f(k) = 1;
        break
    end
    newZ=num2str(newZ);
    f(k) =str2num(newZ(1));
    z=str2num(newZ(2:end));
end

%print the output
fprintf('f = ')
fprintf('%0.f',f);
fprintf('\ni = %i\n',i);

end
