%Script File for Q1 of HW 5
xvals = [30 35 40 45 50 55 60 65 70 75];
yvals = [0.85 0.67 0.52 0.42 0.34 0.28 0.24 0.21 0.18 0.15];
y1 = 0.85-0.036.*(xvals-30)+0.0006.*(x-30).*(x-35);
y2 = 0.85.*(0.67/0.85).^(x./5-6);
y3 = y1;
for n = 3
   x = [30 35 40 45 50 55 60 65 70 75];
   y = [0.85 0.67 0.52 0.42 0.34 0.28 0.24 0.21 0.18 0.15];
   [a,b,c,d] = CubicSpline(x,y,2,0,0);
   svals = pwCEval(a,b,c,d,x,xvals);
   figure
   plot(xvals,yvals,xvals,y1,'--',xvals,y2,'--',xvals,y3,'o-',xvals,svals,'--')
   legend('Original','Quadratic function','Exponential function','The interpolation polynomial','The interpolating cubic spline')
end