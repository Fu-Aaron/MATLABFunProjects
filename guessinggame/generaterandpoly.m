function [polynomial, coefficient] = generaterandpoly(nTerm, rangeLow, rangeHigh)
if nTerm < 2 || rangeLow > rangeHigh
    disp('Check your inputs');
else
    coefficient = randi([rangeLow rangeHigh], 1, nTerm);
    polynomial = cell(1, numel(coefficient));
    for i = 1:numel(coefficient)
        polynomial{i} = @(x) coefficient(i)*x^(nTerm-i);
    end
end