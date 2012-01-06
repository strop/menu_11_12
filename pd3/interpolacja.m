function y = interpolacja(Xi, Yi, x)
  y = [];
  n = length(Xi);
  for i = [2:n]
    for j = [n:-1:i]
      Yi(j) = (Yi(j) - Yi(j-1)) / (Xi(j) - Xi(j-i+1));
      Yi
    end
  end
  for i = [1:length(x)]
    y = [y; horn(Xi, Yi, x(i))];
  end
end
