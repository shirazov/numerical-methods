program newtone;

var// Указываем типы данных для переменных
    x0, x1, eps, h: real;
    i: integer;

function  // Указываем тип данных для функции
    f(x: real): real;

begin// Расчет функции
    f := sin(x) - x * cos(x);
end;

begin
    eps := 0.001;
    x0 := 5;
    x1 := 5;
    i := 0;
    h := 0.00001;
    while abs(f(x0)) >= eps do
        begin
            x0 := x1;
            x1 := x0 - f(x0) / ((f(x0 + h) - f(x0)) / h);
            inc(i);
        end;
    writeln(' Итераций: ', i);
    writeln(' x: ', x1);
end.
