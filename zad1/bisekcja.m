function [x0, lastlen] = bisekcja(f,lewy,prawy,res)
  assert(res > 0, "Błąd: podano ujemne residuum");
  x0 = [];
  mid = (lewy+prawy)/2;
  while abs(f(mid)) > res,
    assert(sign(f(lewy)) ~= sign(f(prawy)), "Błąd w trakcie wykonywania metody bisekcji: funkcja ma taki sam znak na obu końcach przedziału");
    mid = (lewy+prawy)/2;
    x0 = [x0; mid];
    if sign(f(lewy)) == sign(f(mid)),
      lewy = mid;
    else
      prawy = mid;
    end;
    lastlen = prawy-lewy;
    printf("%f, %f\n" ,lewy,prawy)
  end;
end;
