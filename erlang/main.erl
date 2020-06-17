-module(main).
-export([iterate/5, start/0]).

iterate(P, _A, _S, N, T) when N == T -> P;
iterate(P, A, S, N, T) when N /= T -> iterate(P + S*(4/(A*(A*(A+3)+2))),A+2,-S,N+1,T).

start() ->
  io:fwrite("pi = ~w~n",[iterate(3, 2, 1, 0, 150000)]).
