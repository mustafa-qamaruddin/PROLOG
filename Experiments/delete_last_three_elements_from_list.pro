domains
Ilist = integer*

predicates
nondeterm conc(Ilist, Ilist, Ilist)
nondeterm delete_last_three(Ilist, Ilist)

clauses
conc([], L, L).
conc([X|L1], L2, [X|L3]):-
	conc(L1, L2, L3).
	
delete_last_three(L, L3):-
	conc(L1, [_], L),
	conc(L2, [_], L1),
	conc(L3, [_], L2).
	
goal
delete_last_three([1,2,3,4], L).