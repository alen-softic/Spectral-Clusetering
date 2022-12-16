function [W] = gaussian_kernel(A,sigma)
%Gaussian_kernel The input is a data matrix containing the variables in columns
%and their observations in the rows, and the sigma parameter of the Gaussian
%kernel.  Output is the adjacency matrix of a weighted graph

W=exp(- squareform(pdist(A,'squaredeuclidean')) / sigma^2);
end