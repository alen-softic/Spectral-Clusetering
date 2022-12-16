function [W] = Gaussian_kernel3(A,sigma)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
n=size(A,1);
W=zeros(n);
for i=1:n
    for j= (i+1):n
        x=A(i,:)-A(j,:);
        W(i,j)= exp (- x*x' / sigma^2);
        W(j,i)=W(i,j);
    end
end

end