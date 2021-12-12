program dihotomiya;

var
    i, n: integer;        // Объявляем целочисленные переменные
    a, b, c, eps: real;   // Объявляем переменные с плавающей точкой

function f(x:real):real;  // Объявляем тим переменной в функции и тип самой функции

begin
   f := sin(x) - x * cos(x);  // Задаем нашу функцию
end;
 
begin
    a := 4;            // Левая граница
    b := 5;            // Правая граница
    eps := 0.001;      // Точность расчетов
    c := (a + b) / 2;  // Вычисляем x1
    n := 1;            // Счетчик
    while ((abs(f(c)) >= eps)) do  // выполнять пока abs(f(c)) > eps
        begin
            if f(a) * f(c) < 0 then b := c else a := c;
            inc(n);  // n = n + 1
            c := (a + b) / 2  // высчитываем новое значение Xn
        end;
writeln(' Итераций: ', n);
writeln(' x: ', c:1:4);
end.