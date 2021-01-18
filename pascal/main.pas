program NilakanthaPi;

(* sysutils is what allows FormatFloat *)
uses sysutils, crt;

var pi : double = 3.0;

(* Calculation procedure *)
procedure calculate(number : int64);
(* Counter variable *)
var v : int64;
(* Calculation variables *)
var s : double = 1.0;
var c : double = 2.0;
begin
  (* Main loop *)
  for v := 1 to number do
  begin
    (* Perform calculations *)
    pi := pi+(s*(4.0/(c*(2.0+(c*(c+3.0))))));
    s := -s;
    c := c + 2;
  end;
end;

begin
  (* Clear screen *)
  ClrScr;
  (* Calculate *)
  calculate(1000000);
  writeln('pi = ', formatFloat('', pi));
end.
