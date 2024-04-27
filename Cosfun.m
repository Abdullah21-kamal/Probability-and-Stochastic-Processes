theta = unifrnd(-pi,pi,1000);
omega = 2*pi;
A = 5;
t = -5:0.01:5- 0.01;
x=[];
for i = 1:1000
x(i,:) = A* cos(omega*t + theta(i));
end
figure(1)
plot(t,x(1,:));
figure(2)
Y = mean(x); 
plot(t,Y);
%writematrix (x,'cos.xlsx');
%writematrix (t,'cos.xlsx','sheet',2);