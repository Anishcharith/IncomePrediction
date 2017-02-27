function [theta lambda]= income()


load 'census_income.mat';
X=workclass;
X=[X relation];
X=[X race];
X=[X num];
X=[X nations];
X=[X marital];
X=[X jobs];
X=[X gender];
X=[X education];
[m n]=size(X);
X=[ones(m,1) X];
initial_theta=zeros(n+1,1);
lambda=.02;
options = optimset('GradObj', 'on', 'MaxIter', 400);



[theta, cost] = fminunc(@(t)(costfunction(X, Y, t, lambda )), initial_theta, options);





Xval=[ones(size(Xval,1),1) Xval];




lambda_vec = [0 0.001 0.003 0.01 0.03 0.1 0.3 1 3 10];


for i=1:9

lambda=lambda_vec(i);

[Jval,grad_val]=costfunction(Xval,yval,theta,lambda);

error_val(i) = Jval;

end

[i j]=min(error_val);

lambda=lambda_vec(j);



