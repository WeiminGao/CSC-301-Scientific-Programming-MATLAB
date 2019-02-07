function s = dot3(x,y)
   for k=1:5
     xay=Represent(x(k));
     yay=Represent(y(k));
     s=Float(xay,yay,'*');
     s=Convert(s);
   end
     
     