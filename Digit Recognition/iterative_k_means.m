function P = iterative_k_means(A,k)

% Import data matrix A with samples in rows, variables in columns 
% ( A is standard data matrix)
% k is number of clusters

%return the partition containig the clusters named 1,2, ... ,k

[m,n]=size(A); %size of data matrix

P_old=mod(1:m,k)+1; %starting partition
means=zeros(k,n);
for i=1:k
    means(i,:)=mean(A(P_old==i,:));  % starting centroids
end
P_new=zeros(size(P_old));

for i=1:1000 % 100 iterations max 

    for j=1:m % make new partition

    min=norm(A(j,:)-means(1,:)); % assume cluster 1 is the closest one
    cluster=1;

    for l=2:k % if there exists a better cluster

        if(norm(A(j,:)-means(l,:))<min)
            min=norm(A(j,:)-means(l,:));
            cluster=l;
        end

    end

    P_new(j)=cluster;
    end

    if P_new==P_old
        break
    else 
        P_old=P_new;
    end

    % calculate the new means
    
    for i=1:k
    means(i,:)=mean(A(P_new==i,:));  % new centroids
    end

    P=P_new;
end






end