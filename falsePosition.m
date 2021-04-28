function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
%falsePosition finds the root of a function using false position method

func=@(x) x.^3
xl=-4
xu=9

ea=1.0
if nargin < 3
      error ('not enough inputs')
end
if nargin < 4
    es=0.0001
end
if nargin <5
    maxit=200
end 
if nargin >6 
    error ('too many arguments')
end


iter = -1 
x_r_prev=0
while ea > es
 
     if iter > maxit 
         break
     else
             iter = iter + 1 
    
    x_r= xu - ((func(xu)*(xl-xu))/(func(xl)-func(xu)))
    
    z=func(xl)*func(xu)
     end
    if z < 0
        xl=x_r 
    elseif z > 0 
        xu=x_r
    elseif z==0 
        ea=0 
    end
      ea= ((x_r) - (x_r_prev)) /(x_r) 
     x_r_prev = x_r
end
root=x_r
fx=func(root)
disp(fx)



