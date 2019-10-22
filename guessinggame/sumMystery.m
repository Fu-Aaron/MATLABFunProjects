function output = sumMystery(polynomial, input)
output = 0;
for i = 1:numel(polynomial)
    fun = polynomial{i};
    output = output + fun(input);
end
