domains
	ILIST = symbol*
	
predicates
	nondeterm reverse(ILIST, ILIST)
	nondeterm reverse_aux(ILIST, ILIST, ILIST)

clauses
	reverse(L, R):-
		reverse_aux(L, R, []).
	reverse_aux([], R, R).
	reverse_aux([H|T], R, ACCUMALATOR):-
		NACCUMALATOR = [H|ACCUMALATOR],
		reverse_aux(T, R, NACCUMALATOR).

goal
reverse([a, b, c, d], M).