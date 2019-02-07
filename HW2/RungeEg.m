% Script File: RungeEg2
% For n = 7:2:15, the equal-spacing interpolants of f(x) = 1/(1+x^2) on [-5,5]'
% are of plotted.

close all
x = linspace(-5,5,100)'; 
y = ones(100,1)./(1 + x.^2);
for n=7:2:15
   figure
   xEqual = linspace(-5,5,n)'; 
   yEqual = ones(n,1)./(1+xEqual.^2);
   cEqual=InterpN(xEqual,yEqual);
   pValsEqual = HornerN(cEqual,xEqual,x);
   plot(x,y,x,pValsEqual,xEqual,yEqual,'*')
   title(sprintf('Equal Spacing (n = %2.0f)',n))
end



