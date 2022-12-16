function [P] = normalized_cuts(W,k)
%Normalized_cuts Input is W, a weighted adjacency matrix of a graph, 
% k is the wanted number of clusters

n=size(W,1); % size of W
P=zeros(1,n); % final vector containing the cluster assignment
D=1 ./ sqrt(W*ones(n,1)); % The degree matrix
W12= D' .* W .* D; % Matrix D ^ (-1/2) * W * D ^ (-1/2)

[U,~,~]=eigs(W12,k,'largestreal');  % Ky-Fan 

% U contains the relaxed solution

Z_star=U .* D ; % solution to the relaxed problem, 
X_star=normr(Z_star);

X=zeros(size(U)); %X needs to be of a discrete form

% We wish to minimizz |X - X_star*Q| by X and Q
% ALS (alternating least squares)


phi_old=0;
phi_new=0; %machine precision parameters

%first iteration to initialize machine precision
for j=1:n
        [~,ind]=max(X_star(j,:));
        X(j,ind)=1;
end 

[U,S,V]=svd(X_star'*X); % sparse matrix
phi_old=trace(S);
Q=U*V';
T=X_star*Q;


for i=1:1000 % 1000 iterations max
    

    for j=1:n
        [~,ind]=max(T(j,:));
        X(j,ind)=1;
    end % we found the best discrete X


    % keep X fixed and solve for best Q
    [U,S,V]=svd(X_star'*X); % sparse matrix
    phi_new=trace(S);
    if abs(phi_old-phi_new)<0.0001
        break;   
    else
       phi_old=phi_new;
    end
    
    Q=U*V'; % Procrustes gives the best solution
    T=X_star*Q;


end


for i=1:n
    [~,P(i)]=max(X(i,:)); % fill in the vector assignment
end


end