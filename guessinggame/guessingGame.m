clear; clc;

%{
for i = 1:100
[p,c] = generaterandpoly(2, -5, 5);
disp(displayMystery(c));
end
%}
power = 3;
[p,c] = generaterandpoly(power+1, -5, 5);
isRunning = true;
nIn = 0;
while isRunning
    in = input(['Please enter an input(scalar), or if you would like to make a final guess enter ''GUESS'' ' newline]);
    if isequal(in, 'GUESS')
        guess = input(['Please enter your guess for the formula as a charArray:' newline]);
        if isequal((guess), displayMystery(c))
            disp('Congratulations, you win!');
            break;
        else
            disp(['I''m sorry but the correct answer was: ' displayMystery(c)]);
            break;
        end
    else
    output = ['Your output is ' num2str(sumMystery(p,in))];
    nIn = nIn + 1;
    disp(output);
    disp(['Inputs entered: ' num2str(nIn)]);
    end
end
disp(['You have entered ' num2str(nIn) ' inputs']);