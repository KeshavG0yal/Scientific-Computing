A = [pi, 3/7, -2; -1, 3, 0; 17/5, -2, pi/6]
b = [1; -3; 12]
v = A \ b


B = [1, 2; -3, 4/13; -1, 7];
y = [2; -1; 3];
x = B \ y;


r = y - B*x


residerr = norm(r);


f = [2.8196; 1.6986; 3.2496; 4.0000; 3.2496; 1.6968; 2.8196]


sL = linspace(0, 1, 7)';


n = 6


a = polyfit(sL, f, 6);


t = linspace(0, 1, 100)';


pvals = polyval(a, t);


c = polyfit(sL, f, 4);
