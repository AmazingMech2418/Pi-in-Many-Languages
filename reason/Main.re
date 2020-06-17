let p: ref(float) = ref(3.0);
let a: ref(float) = ref(2.0);
let s: ref(float) = ref(1.0);
let iterate = () => {
  p := p^ +. s^ *. (4.0 /. (a^ *. (a^ *. (a^ +. 3.0) +. 2.0)));
  a := a^ +. 2.0;
  s := 0.0 -. s^;
}
for(_ in 0 to 150000) {
  iterate();
}
Js.log("pi = " ++ string_of_float(p^));
