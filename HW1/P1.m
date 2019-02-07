%Script File: Probability of complex roots

close all
rand('seed',.12345);
n = 100:100:800;
Pro1 = zeros(8,1);
Pro2 = zeros(8,1);
dispN = zeros(8,1);
for k=1:8
%P1: The coefficients are random variables with uniform(0,1).
    complexRoots1 = 0;
    a1=rand(n(k),1);
    b1=rand(n(k),1);
    c1=rand(n(k),1);
    ans1=(-b1+sqrt( b1.^2-4.*a1.*c1))./2.*a1;%First root of equation.
    root1=imag(ans1);%Find the imaginary part of the first root.
    ans2=(-b1-sqrt( b1.^2-4.*a1.*c1))./2.*a1;%second root of equation.
    root2=imag(ans2);%Find the imaginary part of the second root.
%P2: The coefficients are random variables with normal(0,1). 
    complexRoots2 = 0;
    a2=rand(n(k),1);
    b2=rand(n(k),1);
    c2=rand(n(k),1);
    ans3=(-b2+sqrt( b2.^2-4.*a2.*c2))./2.*a2;
    root3=imag(ans3);
    ans4=(-b2-sqrt( b2.^2-4.*a2.*c2))./2.*a2;
    root4=imag(ans3);
    for i=1:n(k)
        if(root1(i)~=0) complexRoots1=complexRoots1+1; end
        %Check: if the imaginary part is not equal to 0, the root is complex.
        if(root2(i)~=0) complexRoots1=complexRoots1+1; end
        %also check the imaginary part of second root.
        if(root3(i)~=0) complexRoots2=complexRoots2+1; end
        if(root4(i)~=0) complexRoots2=complexRoots2+1; end

    end
    dispN(k)=n(k);
    Pro1(k)=complexRoots1/(n(k)*2)*100; %calculate probability.
    Pro2(k)=complexRoots2/(n(k)*2)*100;
end
fprintf('The probability P1(%i): %5.3f%%     The probability P2(%i): %5.3f%%\n',[dispN, Pro1,dispN, Pro2]')
        

