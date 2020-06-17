[t,s,a,p]=[0,1,2,3],f=n=>{p+=s*(4/(a*(a*(a+3)+2))),s=-s,t-=s/(a-1),a+=2;console.log(`Nilakantha: ${p+" ".repeat(20-(''+p).length)}Arctan: ${t*4}`)};setInterval(f,5);console.clear()
