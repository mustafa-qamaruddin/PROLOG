domains
List = integer*

predicates
nondeterm conc(List, List, List)
nondeterm last(integer, List)

clauses

conc([], L, L).
conc([X|L1], L2, [X|L3]):-
	conc(L1, L2, L3).
	
last(Item, L):-
	conc(_, [Item], L).
	
goal
last(X, [1, 2, 3, 4, 5, 9]).