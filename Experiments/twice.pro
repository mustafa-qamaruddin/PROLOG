domains
	ILIST = integer*
	
predicates
	nondeterm twice(ILIST, ILIST)
	nondeterm twice_aux(ILIST, ILIST, ILIST)
	nondeterm append_last(integer, ILIST, ILIST)
	
clauses
	append_last(X, [], [X]).
	append_last(X, [H|T], [H|R]):-
		append_last(X, T, R).
		
	twice(In, Out):-
		twice_aux(In, Out, []).
		
	twice_aux([], Out, Out).
	twice_aux([H|T], Out, Acc):-
		append_last(H, Acc, Acc1),
		append_last(H, Acc1, Acc2),
		twice_aux(T, Out, Acc2).
		
goal
	twice([1,2,3,4,5,6], R).