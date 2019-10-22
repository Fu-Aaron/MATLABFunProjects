function mysteryString = displayMystery(coefficient)
mysteryString = [];
for i = 1:numel(coefficient)
   mysteryString = [mysteryString generateString(coefficient(i), numel(coefficient)-i)]; 
end
if isequal(mysteryString, [])
    mysteryString = ['0'];
elseif isequal(mysteryString(1), '+')
    mysteryString = mysteryString(2:end);
end


function stringAdd = generateString(scalarCoefficient, power)
stringAdd = [];
    if power == 0
        if scalarCoefficient > 0
            stringAdd = ['+' num2str(scalarCoefficient)];
        elseif scalarCoefficient < 0
            stringAdd = num2str(scalarCoefficient);
        end
    else
        if power == 1
            xpow = 'x';
        else
            xpow = ['x^' num2str(power)];
        end
        
        plus = [];
        if scalarCoefficient > 0
            plus = '+';
        end
        
        if scalarCoefficient == 0
            return;
        elseif scalarCoefficient == 1 
            stringAdd = [plus xpow];
        elseif scalarCoefficient == -1
            stringAdd = ['-' xpow];
        else
        stringAdd = [plus num2str(scalarCoefficient) xpow];
        end
    end
    