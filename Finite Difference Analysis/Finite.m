dt = 0.01;


t = (1:dt:1+4*dt)';


f = sin(pi*t).^2;


f1p2 = (f(3) - f(1)) / (2*dt);


fp = zeros(size(f));
fp(1) = (f(2) - f(1)) / dt;
for j = 2:length(f)-1
    fp(j) = (f(j+1) - f(j-1)) / (2*dt);
end
fp(end) = (f(end) - f(end-1)) / dt; %


f2p3 = (f(4) - 2*f(3) + f(2)) / (dt^2);


d2 = zeros(5,1);
d2(1) = -1/(12*dt^2);
d2(2) = 4/(3*dt^2);
d2(3) = -5/(2*dt^2);
d2(4) = 4/(3*dt^2);
d2(5) = -1/(12*dt^2);


f2p3better = d2' * f;


x = linspace(-3, 0, 400)';


dx = abs(x(2) - x(1));


y = exp(-x.^2) .* cos(3*pi*(x.^3 - 2*x + 3));
St = trapz(x, y);