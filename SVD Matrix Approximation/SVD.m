M = [
    1,  1,    1,    1;
    1,  0,   -2,    1;
    pi, pi,  pi,   pi;
    1/6, 0, -2/6, 1/6;
    2,  2,   -1,    2
];


[U, S, V] = svd(M, 'econ');


uprod = U' * U;


s = diag(S);


r = rank(M);


M1 = s(1) * U(:,1) * V(:,1)';


err1 = norm(M - M1, 'fro');


M3 = U(:,1:3) * S(1:3,1:3) * V(:,1:3)';


err3 = norm(M - M3, 'fro');
