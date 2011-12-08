function [coeffLin, coeffSq, coeffQuad] = bestFit(x,y)
  coeffLin = bestFitRank(x,y,1);
  coeffSq = bestFitRank(x,y,2);
  coeffQuad = bestFitRank(x,y,3);
end;

function coeff = bestFitRank(x, y, rank)
  A = [];
  powers = fliplr(0:rank);
  for i = 1:length(x),
    A = [A; (x(i)).^powers];
  end;
  coeff = A\y
end;


fancydiag = @(x) diag(ones(x,1)*2) + diag(ones(x-1,1)*-1,1) + diag(ones(x-1,1)*-1,-1);

function A = sparsediag(n)
  A = sparse(n,n);
  A(1:n+1:n^2) = ones(n,1)*2;
  A(2:n+1:(n^2)-n) = ones(n-1,1)*-1;
  A(n+1:n+1:(n^2)) = ones(n-1,1)*-1;
end;

function x = solve_a(A, f)
  x = inv(A)*f;
end;

function x = solve_b(A, f)
  x = A\f;
end;

function x = solve_c(A, f)
  [L,U,P] = lu(A);
  y = L\(P*f);
  x = U\y;
end;

marker = 0;

function t = cputic()
  marker = cputime();
end;

function t = cputoc()
  t = cputime()-marker;
end;

function t = times(A,f)
  t=zeros(3,1);
  marker = cputime();
  solve_a(A,f);
  t(1) = cputime()-marker;
  marker = cputime();
  solve_b(A,f);
  t(2) = cputime()-marker;
  marker = cputime();
  solve_c(A,f);
  t(3) = cputime()-marker;
end;
