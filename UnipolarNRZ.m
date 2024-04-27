Tb = 100;
% u should alternate among 1, 10 and 100 for Tb
A = 1;
N = 100;
alpha = randi([0,Tb],[1,N]);
t = 0:0.1:N * Tb - 0.1;
p = @(t) rectpuls(((t - (Tb / 2)) / Tb));
x = [];
bits = randi([0,1], [1,N]);
for j = 1 : N
    %count_rows = height(t);
    x(j,:) = zeros(1,length(t));
    for  i = 1 : N
       if (bits(i) == 0)
           x(j,:) = x(j,:);
       else
           x(j,:) = x(j,:) + A.* p(t-i *Tb - alpha (j));
       end
    end
end
figure
plot(t,x(1,:));
title('Unipolar NRZ process with Tb = ',Tb);
xlabel('time vector');
ylabel('sample functions');