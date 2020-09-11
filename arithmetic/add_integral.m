% DEVARSH THAKER
% MATH-446 Dr. Sarah Khankan
% FINAL PROJECT Q2
% function z = AddIntegral (x,y)

% initialize the function:
function z = add_integral(x,y)

%get deciaml values then add
d1 = bi2de(x,'left-msb');
d2 = bi2de(y,'left-msb');

d3 = d1+d2;
%return the binary value from the added decimal
z = dec2bin(d3)-'0';

end
