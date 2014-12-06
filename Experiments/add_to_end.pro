domains
	IList = integer*
	
predicates
	nondeterm add_to_end(integer, IList, IList)
	
clauses
	add_to_end(Item, [], [Item]).
	add_to_end(Item, [H|T], [H|R]):-
		add_to_end(Item, T, R).
		
goal
add_to_end(1, [2,3,4], L); add_to_end(9, [1,2,3], M).