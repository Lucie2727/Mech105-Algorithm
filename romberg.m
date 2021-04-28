function (r,n)=romberg(f2,a,b,n)
f2=@(x) (x*(exp(2*x)))
a=0
b=8
h=(b-a)./(2.^(0:n-1));
r(1,1)=(b-a)*(f(a)+f(b))/2;
for j=2:n
    subtotal=0
   for i=1:2^(j-2)
       subtotal=subtotal + f(a+(2*i-1)*h(j));
   end
   r(j,1)=r(j-1,1)/2+h(j)*subtotal;
   for k=2:j
       r(j,k)=(4^(k-1)*r(j,k-1)-r(j-1,k-1))/(4^(k-1)-1);
   end 
end 