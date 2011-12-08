ex1 = [4.5,3,3.5;-1,1,-1;-0.5,-1,0.5];
ex2 = [5998.5, 5997,5997.5;-2998,-2996,-2998;0.5,1,0.5];
ex3 = [6.5,7,9.5; -1,1,-1; -2.5, -5, -5.5];
ex4 = [6.5, 3, 1.5; -3,-1,-3; 1.5, 3, 6.5];
ex5 = [2,-2,0;2,2,0;0,1,1];
ex6 = [1,-1;-1,1];
ex7 = [1,-1;1,-1];

% 
function wlasne = potegowa()

end;

% metoda potegowa bez normowania
function [lambda, wlasne] = dummyPot(A, x0, iter)
  wlasne = [x0];
  for i = 1:iter,
    wlasne = [wlasne; A*wlasne(end)];
  end;
end;

% przyblizenie wartosci wlasnej ilorazem Raleigha - A - macierz, x - wektor wlasny
function lambda = raleigh(A, x)
  lambda = (x'*A*x)/(x'*x);
end;

