program sekyshie;

var
    a, b, x0, x1, x2, eps: real;
    i: integer;

function
    f(x:real): real;
    
begin
    f := sin(x) - x * cos(x);
end;

begin
    a := 4;
    b := 5;
    eps := 0.001;
    i := 0;
    while abs(b - a) > eps do
        begin
            x0 := a;
            x1 := b;
            a := b;
            b := x1 - ((x1 - x0) / (f(x1) - f(x0))) * f(x1);
            inc(i);
        end;
    writeln(' Итераций: ', i);
    writeln(' x: ', b:1:4);
end.