install-pkg bc
clear
pi=3
a=2
s=1
iterate () {
  temp=$(bc -l <<< "$a+3")
  temp=$(bc -l <<< "$a*$temp")
  temp=$(bc -l <<< "$temp+2")
  temp=$(bc -l <<< "$temp*$a")
  temp=$(bc -l <<< "4/$temp")
  temp=$(bc -l <<< "$s*$temp")
  pi=$(bc -l <<< "$pi+$temp")
  let s=0-$s
  let a+=2
}
i=0
while [ $i -lt 150000 ]; do
  let i++
  iterate
  echo $pi
done
