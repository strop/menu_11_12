function [approx, ok] = binewt(f, lewy, prawy, res)
  approx = []
  try
    [approxbin, lastlen] = bisekcja(f, prawy, lewy, res);
  catch
    lasterror.message
    ok = 0;
    return
  end
  approxnewt = newton(f, approxbin(end), lastlen*0.01);
  approx = [approxbin; approxnewt];
  ok = 1;
end
