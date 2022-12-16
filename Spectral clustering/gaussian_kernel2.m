function W = Gaussian_kernel2(A,sigma)
n=size(A,1);
W=zeros(n);
k=1;
d=pdist(A,"squaredeuclidean");
for j=1:n
    for i=(j+1):n
        W(i,j)=exp(-d(k)/sigma^2);
        W(j,i)=W(i,j);
        k=k+1;
    end
end


end