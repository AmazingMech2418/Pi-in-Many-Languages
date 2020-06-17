let t = 0;
let s = 1;
let a = 2;
let p = 3;
function iterate(n) {
  p += s * (4 / (a * (a * (a + 3) + 2)));
  s = -s;
  t -= s / (a - 1);
  a += 2;
  console.log(`Nilakantha: ${p + " ".repeat(20 - ('' + p).length)}Arctan: ${t * 4}`)
}
setInterval(iterate, 5);
console.clear();
