%Script File: Histograms of the error (dot3)
%Histograms of randn(5,1) with 20 bins
close all
err = zeros(100:1);
for k=1:100
    x = randn(5,1);
    y = randn(5,1);
    err(k) = x'*y-dot(x,y);
end
hist (err,20)
