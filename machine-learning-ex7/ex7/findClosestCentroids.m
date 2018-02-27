function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);
[m,N]=size(X);
% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.

%The code below did not work for image compression but works for
%assigment submission
% min_indexes=zeros(1,m);
% for i=1:m
%     for k=1:K
%         mat(i,k)=sum((X(i,:)-centroids(k,:)).^2);
%     end
%     min_indexes(i)=find(mat(i,:)==min(mat(i,:)));
%     idx=min_indexes;
% end
% idx=idx(:);

for i=1:m
    for k=1:K
        for n=1:N
            col_feature(n)=(X(i,n)-centroids(k,n)).^2;
        end
        distance(k)=sum(col_feature);
    end
    [rows,col]=min(distance);
    idx(i)=col;
end
% =============================================================

end

