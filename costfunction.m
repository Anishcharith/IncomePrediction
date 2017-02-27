function [J,grad] = costfunction(X,y,theta,lambda)

m=size(X,1);

J=(1/m)*(-y'*log(hypo(X,theta))-(1-y)'*log(1-hypo(X,theta)))  + (lambda/(2*m))*(theta'*theta);

grad=(1/m).*((hypo(X,theta)-y)'*X)' + (lambda/m).*theta;

grad(1,:)= (1/m).*((hypo(X,theta)-y)'*X(:,1));
