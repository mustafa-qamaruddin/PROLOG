predicates

nondeterm repeat
nondeterm dosquares
nondeterm square(real)

clauses

repeat.
repeat:-
	repeat.

dosquares:-
	repeat,
	readint(X),
	square(X).

square(-1).
square(X):-
	Y =  X*X, write(Y,"\n"),fail.

goal
      dosquares.