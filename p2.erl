-module(p2).
-export([p2/1]).

fiblist(N) ->
	fiblist(N, 0, 1, []).

fiblist(N, X, Y, Accum) ->
	Sum = X + Y,
	if
		Sum > N ->
			Accum;
		true ->
			fiblist(N, Y, Sum, Accum ++ [Sum])
	end.

sum([], X) ->
	X;
	
sum(L, Accum) ->
	[Cur|Tail] = L,
	sum(Tail, Accum + Cur).

p2(X) ->
	Fibs = fiblist(X),
	Evens = [Y || Y <- Fibs, Y rem 2 == 0],
	sum(Evens, 0).


