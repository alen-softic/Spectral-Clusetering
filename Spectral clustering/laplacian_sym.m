function P = Laplacian_sym(W,k)
% W is the weighted adjacency matrix
% k is the number of clusters

% output: cluster vector

n=size(W,1);
D=W*ones(n,1);

W12= D' .* W .* D; 
L=eye(n) - W12;
[U,~,~] = eigs(L,k,'smallestreal'); 
P=iterative_k_means(normr(U),k); %normalizing rows in necesarry
end