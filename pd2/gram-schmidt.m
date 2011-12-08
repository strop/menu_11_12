function orto=GS_orto(z)
if nargin~=1, error('nieprawidłowa liczba argumentów'); end

% orto to macierz rozmiaru [m x n], (m wierszy ortoznormalizowanych wektorów długości 
%  n.  Na wejściu dostajemy macierz wektorów wierszowych do ortonormalizacji
% Wyjście o macierz znormalizowanych wektorów, obliczona przy pomocy metody grama-schmidta

[m,n]=size(z); % m = liczba wektorów, n = wymiar wektorów
orto=0*z;     % inicjalizacja orto do wymiarów z

orto(1,:)=z(1,:)/sqrt(sum(z(1,:).*z(1,:)));
for k=2:m
% temp=0*temp;
% for s=1:k-1
%  temp=temp+sum(z(k,:).*orto(s,:))*orto(s,:);
% end
% orto(k,:)=z(k,:)-temp;
% Linia poniżej robi to samo, tylko szybciej
 orto(k,:)=z(k,:)-sum((sum(((([1:k-1]&1)'*z(k,:)).*orto(1:k-1,:))')'*(1&[1:n])).*orto(1:k-1,:));
 orto(k,:)=orto(k,:)/sqrt(sum(orto(k,:).*orto(k,:)));
end
orto=orto*sqrt(n);
