% DEVARSH THAKER
% MATH-446 Dr. Sarah Khankan
% FINAL PROJECT Q2
% function i,f = AddBinary (Ix, Fx, Iy, Fy)

% initialize the function:
function [i, f] = add_binary(Ix,Fx,Iy,Fy)

d1 = bi2de(Ix,'left-msb');
d2 = bi2de(Iy,'left-msb');
%add the integral part
d3 = d1+d2;
i = dec2bin(d3)-'0';

%get fraction for x and y
fracX = Fx * (2 .^ -(1:numel(Fx)).');
fracY = Fy * (2 .^ -(1:numel(Fy)).');
%add both fractions
Fz = fracX + fracY;
Fi = 0;
if (Fz-1)>=0
    Fi = 1;
    Fz = Fz - 1;
end

%get the fraction
for k=1:5
    newZ = 2*Fz;
    if newZ==1
        fi(k) = 1;
        break
    end
    newZ=num2str(newZ);
    fi(k) =str2num(newZ(1));
    Fz=str2num(newZ(2:end));
end

%if the fraction was grater than 1, then add it to i
d3 = d3 + Fi;
i = dec2bin(d3)-'0';

%print the result
fprintf('i = ')
fprintf('%0.f',i);
fprintf('\nf = ')
fprintf('%i',fi);

end
