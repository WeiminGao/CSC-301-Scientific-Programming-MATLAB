% Script File: f(x)=cos(1/x)

close all
x = linspace(0,1,10);
y = cos(1./x);
for tol = [.01  .001]
   for m=3:2:9
      num0 = AdaptQNC('SpecHumps',0.1,2,m,tol);
   end
end