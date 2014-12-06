domains
ILIST = symbol*

predicates
nondeterm delete_all(symbol, ILIST, ILIST)

clauses
delete_all(_, [], []).
delete_all(X, [X|T], T2):-
	delete_all(X, T, T2),!.
delete_all(X, [Y|T], [Y|T1]):-
	delete_all(X, T, T1).
	
goal
delete_all(a, [a, b, a, a], M); delete_all(a, [b, b, b, b, b, b, b, a, b, a, a, a], N).