with Ada.Text_IO;
with Nilakantha;
use Nilakantha;

procedure Main is
    Approximator : NilakanthaSeries;
    Pi : Long_Float;
begin
    for UnusedVariable in 0 .. 150_000 loop
        Iterate(Approximator);
    end loop;
    Pi := GetPi(Approximator);
    Ada.Text_IO.Put("pi = ");
    Ada.Text_IO.Put_Line(Long_Float'Image(Pi));
end Main;
