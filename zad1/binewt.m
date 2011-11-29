function [approx, ok] = binewt(f, lewy, prawy, res)
  approx = [];
  approxbin = [];
  try
    [approxbin, lastlen] = bisekcja(f, prawy, lewy, res);
    disp(approxbin)
    approx = approxbin;
    if length(approxbin) ~= 1
      approxnewt = newton(f, approxbin(end), lastlen*0.01);
      approx = [approxbin; approxnewt];
    end;
    ok = 1;
  catch
    lasterror.message
    ok = 0;
    return
  end
end
