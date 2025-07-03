alpha = 1.5;
omega = 5;
eta = 0.5;
h = 0.1;
t0 = 0;
N = 50;
t = t0:h:h*(N-1);
sy = zeros(N, 1);
sy(1) = 1;
for n = 1:N-1
    sy(n+1) = sy(n) + h * (alpha * sin(omega * t(n)) - eta * sy(n));
end


A = [-1   0   0   0    0;
      0.5 -3  0.5 0    0;
      0   0.5 -3  0.5  0;
      0   0   0.5 -3  0.5;
      0   0   0   0   -1];
g0 = [1; 2; 1; 0.5; 0.25];
h = 0.1;
num_steps = 10;
I = eye(5);
B = I - h * A;
Sg = zeros(5, num_steps);
Sg(:,1) = g0;
for n = 2:num_steps
    Sg(:,n) = B \ Sg(:,n-1);
end


M = [1, pi, 2, 0;
     0, 1, pi, 2;
     2, 0, 1, pi;
     pi, 2, 0, 1];
[V, D] = eig(M);
lambda = diag(D);
[~, idx] = sort(abs(lambda), 'descend');
absd = abs(lambda(idx));
v1 = V(:, idx(1));
lambda1 = lambda(idx(1));
eigcheck = norm(M*v1 - lambda1*v1);
