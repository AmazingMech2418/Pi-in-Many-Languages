package body Nilakantha is
    procedure Iterate(Self : in out NilakanthaSeries) is
        A : Long_Float;
        S : Long_Float;
    begin
        A := Long_Float(Self.A);
        S := Long_Float(Self.S);
        Self.A := Self.A + 2;
        Self.S := -Self.S;
        Self.Pi := Self.Pi + S * (4.0 / (A * (A * (A + 3.0) + 2.0)));
    end Iterate;

    function GetPi(Self : NilakanthaSeries) return Long_Float is
    begin
        return Self.Pi;
    end GetPi;
end Nilakantha;
