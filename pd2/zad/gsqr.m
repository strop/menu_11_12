function [Q,R] = gsqr(A)
  [m,n] = size(A);
  Q = zeros(m,n);
  for j = [1:n]
    v = A(:,j);
    R(:,j) = Q'*A(:,j);
    v = v - (R(:,j)'*Q')';
    R(j,j) = norm(v);
    Q(:,j) = v/R(j,j);
  end
end
