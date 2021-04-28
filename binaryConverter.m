function [base2] = binaryConverter(base10)
%binary A simple function to convert a base10 number to binary
%   Inputs:
%       base10 - A number in base10
%   Outputs:
%       base2 - The base10 number converted to binary
num=2;
base10=8  %say #here
sum=base10;
remainder=0;
i=1;
base2=0;
while sum > 0
    remainder=mod(sum,num)
    sum=floor(sum./num)
    base2(i)=remainder
    i=i+1
end
base2=flip(base2)


end
