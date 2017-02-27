function [h] = hypo(X,theta)

z=X*theta;
h= 1./(1+exp(-z));
end
