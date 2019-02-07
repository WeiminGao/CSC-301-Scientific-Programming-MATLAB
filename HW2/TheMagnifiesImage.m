[X,Y] = meshgrid(-3:3);
V = peaks(7);
figure
surf(X,Y,V)
title('Original Sampling');

[Xq,Yq] = meshgrid(-3:0.25:3);
Vq = interp2(X,Y,V,Xq,Yq,'bilinear');
figure
surf(Xq,Yq,Vq);
title('Bilinear Interpolation Over Finer Grid');

[Xq,Yq] = meshgrid(-3:3);
Xq=2*Xq;
Yq=2*Yq;
Vq=2*V;
figure
surf(Xq,Yq,Vq)
title('Doubling the image size');