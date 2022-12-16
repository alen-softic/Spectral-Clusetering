function W = epsilon_kernel(A,r)
%epsilon_kernel The function gets a data matrix 'A' containg its varibles in
%the columns and their observations in rows, and a radius parameter 'r'.
%It outputs the adjacency matrix of a weighted graph.

[m,~]=size(A);
W=zeros(m);
X=squareform(pdist(A));
W(X<r)=1;

end