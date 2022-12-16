function [P_iter,P_QR] = relaxed_k_means(A,k)
% A is a data matrix with samples in rows and variables in columns
% k is the number of clusters
n=size(A,1);
P_QR=zeros([1,n]);
[~,~,V]=svds(A',k);
P_iter=iterative_k_means(V,k);
[~,R,P]=qr(V');
X=[eye(k),inv(R(1:k,1:k))\R(1:k,(k+1):end)]*P';
for i=1:n
    [~,P_QR(i)]=max(X(:,i));
end
end

