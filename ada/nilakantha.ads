package Nilakantha is
    type NilakanthaSeries is tagged private;
    procedure Iterate (Self : in out NilakanthaSeries);
    function GetPi (Self : NilakanthaSeries) return Long_Float;
private
    type NilakanthaSeries is tagged record
        A : Integer := 2;
        S : Integer := 1;
        Pi : Long_Float := 3.0;
    end record;
end Nilakantha;
