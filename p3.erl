-module(p3).
-export([p3/1]).

primes(4) ->
	[2, 3].

isdivisible(X, Y) ->
	X rem Y == 0.

checkprime(X, PrimesToCheck) ->
	[Check | Leftover] = PrimesToCheck,
	if
		X rem Check == 0 ->
			false;
		true ->
			checkprime(X, Leftover)
	end.

isprime(X, PreviousPrimes) ->
	Halfish = X / 2,
	Possibles = [P || P <- PreviousPrimes, P =< Halfish],
	checkprime(X, Possibles).

p3(X) ->
	primes(4).