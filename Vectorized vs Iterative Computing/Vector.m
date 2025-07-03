v = [1; 0; 27; 12; -5.3];
w = [pi; exp(2); sqrt(7); nthroot(8, 3); 43];


x = v .* w;


y = v' * w;


z = v * w';


r = 2*v + w - 3;
B = [-1.1, 2.3, 4.7, 5.2, 0;
      3.8, 1.6, -7, 8.9, -2.3];
s = B * w;


disp('v ='); disp(v)
disp('w ='); disp(w)
disp('y = v''*w ='); disp(y)
disp('x = y*w ='); disp(x)
disp('r = 2v + w - 3 ='); disp(r)
disp('s = B*w ='); disp(s)


q = randn(100,1);


loop2 = 0;
for i = 1:length(q)
    loop2 = loop2 + q(i)^2;
end
loop2 = sqrt(loop2);
loop2b = norm(q, 2);
looperror = abs(loop2 - loop2b);


np = sqrt(sum(q.^2));
IPerror = abs(np - loop2b);
disp(['Loop-based norm:    ', num2str(loop2)]);
disp(['No-loop norm:         ', num2str(np)]);
disp(['Built-in norm:    ', num2str(loop2b)]);
disp(['Error in loop-based version:  ', num2str(looperror)]);
disp(['Error in no-loop version:     ', num2str(IPerror)]);
