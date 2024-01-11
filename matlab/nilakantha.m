a = 2;
s = 1;
calcPi = 3;
for n = 0:150000
    calcPi = calcPi + s * (4 / (a * (a * (a + 3) + 2)));
    a = a + 2;
    s = -s;
end
disp("pi = " + num2str(calcPi,15));
