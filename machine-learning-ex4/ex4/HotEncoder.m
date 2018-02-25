function [y_hot]=HotEncoder(y)

y=y(:);
n_labels=unique(y);
for i=1:n_labels
    y_hot=y==i;
    y_hot(i,:)=y_hot';
end
