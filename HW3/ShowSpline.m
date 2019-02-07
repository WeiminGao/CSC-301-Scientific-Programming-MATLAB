% Script File: ShowSpline
% Illustrates CubicSpline with various end conditions, some not so good.

close all
xvals = linspace(0,4*pi,100);
yvals = 2.*sin(xvals) + cos(xvals);
for n = 6
   x = linspace(0,4*pi,n)';
   y = 2.*sin(x) + cos(x);
   [a,b,c,d] = CubicSpline(x,y,1,1,1);
   svals = pwCEval(a,b,c,d,x,xvals);
   figure
   plot(x,y,'o')
   hold on
   plot(xvals,yvals,xvals,svals,'--')
   title(sprintf('Complete spline interpolant'))
end
for n = 6
   x = linspace(0,4*pi,n)';
   y = 2.*sin(x) + cos(x);
   [a,b,c,d] = CubicSpline(x,y,2,0,0);
   svals = pwCEval(a,b,c,d,x,xvals);
   figure
   plot(x,y,'o')
   hold on
   plot(xvals,yvals,xvals,svals,'--')
   title(sprintf('Natural spline interpolant'))
end
for n = 6
   x = linspace(0,4*pi,n)';
   y = 2.*sin(x) + cos(x);
   [a,b,c,d] = CubicSpline(x,y);
   svals = pwCEval(a,b,c,d,x,xvals);
   figure
   plot(x,y,'o')
   hold on
   plot(xvals,yvals,xvals,svals,'--')
   title(sprintf('Not-a-Knot spline interpolant'))
end
