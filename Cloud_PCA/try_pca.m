data = readtable('data.csv');
vars = data.Properties.VariableNames;
x = data.Variables;
X = x'
m = mean(X,2);
Xcen = X-m*ones(1,500);
C = 1/500*Xcen*Xcen';
[V,D] = eig(C);
[~,inx] = sort(diag(D),'descend');
Wpca = V(:,inx(1:6));
Xdim = Wpca'*X;
figure;
plot(Xdim(1,:),Xdim(2,:),Xdim(3,:),Xdim(4,:),Xdim(5,:),Xdim(6,:),'*')