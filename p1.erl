-module(p1).
-export([p1/1]).

divisible(X) ->
	if
		(X rem 3 == 0) or (X rem 5 == 0) ->
			X;
		true ->
			0
	end.
	


p1(X) ->
	p1(X, 0).

p1(0, Accum) ->
	Accum;
		
p1(X, Accum) ->
	p1(X - 1, Accum + divisible(X)).