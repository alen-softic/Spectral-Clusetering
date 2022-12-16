function P = Laplacian(W,k)
% W is the weighted adj. matrix
% k is the number of clusters

% output: cluster vector
m=size(W,1);
L=diag(W*ones(m,1))-W;
[U,~,~] = eigs(L,k,'smallestreal');
P=iterative_k_means(U,k);


end