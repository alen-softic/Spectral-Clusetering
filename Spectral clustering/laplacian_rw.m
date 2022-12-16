function P = Laplacian_rw(W,k)
% Data matrix A with samples in rows, variables in columns
% W is the weighted adjacency matrix
% k is the number of clusters

% output: cluster vector

[m,~]=size(W);
D=diag(W*ones(m,1));
L=D-W; %unnormalized graph Laplacian
[U,~,~] = eigs(L,D,k,'smallestreal');
P=iterative_k_means(U,k);
end