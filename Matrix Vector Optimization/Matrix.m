f = @(x, y) exp(-3 * (x.^2 + (y./2).^2)) + cos(x .* y);


v = [-1; 5; 0; 3];
w = [3; pi/4; 1; 0];
s = f(v, w);


t = f(w, v);


x = linspace(-3, 3, 100);
y = x;


[X, Y] = meshgrid(x, y);


Z = f(X, Y);


z = Z(:);
disp('s = f(v, w):')
disp(s)
disp('t = f(w, v):')
disp(t)
disp('First 10 entries of z = column-stacked Z:')
disp(z(1:10))


g = @(A, B, q) dot(A*q, B*q);


A = [-3 1 0; 2 -10 5; 1 1 -3.7];
B = [15.5 -2 3; 0 -5 2; 3 3 3];
q = [1; 3; -1];
p = g(A, B, q);
disp('p = g(A, B, q):');
disp(p);


mismatch = g(A, B, q) - g(B, A, q);
disp('Mismatch:');
disp(mismatch);