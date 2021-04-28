function [I] = Simpson_one_third(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated
if length (x)~= length (y)
    error ('need to be the same length') 
else 
    e=linspace(x(1),x(length(x)),length(x))
    for i=1:length(x)
        if e(i)~=x(i)
            error('x not evenly spaced')
        end 
    end 
end 
sum=0 ;
n=length(x)-1;
a=1;
b=2;
c=3;
if rem(length(x),2) == 0
    warning ('T.R. implimented');
    trap= (x(length(x))-x(length(x)-1))/2. * ((y(length(x)-1)+y(length(x)))); 
    if length(x)>2 
        for c=3:2:(length(x)-1)
            sum=sum+ (y(a)+4*y(b)+ y(c));
            a=a+2;
            b=b+2;
            c=c+2;
        end
        h=x(length(x)-1)-x(1);
      simp=(h/(3*(n-1)))*sum;
    else 
        simp=0
   
    end 
    I=simp+trap;
else 
    for c=3:2:length(x)
            sum=sum + (y(a)+4*y(b)+ y(c));
            a=a+2;
            b=b+2;
            c=c+2;
    end 
    n=length(x)-1;
    h=x(length(x))-x(1);
    I=(h/(3*n))*sum;
end 
end 
    
   
%%%%PUT IN COMMAND:::
%time = [140 141 142 143 144 145 146 147 148 149]; %X-VALUES 
%CO2evo = [15.72 15.53 15.19 16.56 16.21 17.39 17.36 17.42 17.60 17.75];
%%Y-VALUES

% using the matlab solution
%total_CO2_trap = trapz(time, CO2evo)

% using the matlab solution
%total_CO2_simp = Simpson_one_third(time, CO2evo)

% like this x=[1 2 3 4 5 6 7 8 9 10]; y=[2 3 4 5 6 7 8 9 10 11]; total1=Simpson_one_third(x,y); total2= trapz(x,y)

