/*
	TITLE:
	DESCRIPTION:
		Divide a list of integers to a positive and a negative list
	AUTHOR: Mustafa Hesham Muhammed Metwally
	SECTION: 17
	SEAT NO. 2010190037
*/
domains
	LIST = integer*
	
predicates
	nondeterm divide(LIST, LIST, LIST)
	nondeterm divide_aux(LIST, LIST, LIST, LIST, LIST)
	
clauses
	divide(L, P, N):-
		divide_aux(L, P, N, [], []).
	
	divide_aux([], P, N, P, N).
	
	divide_aux([H|T], P, N, L_POS, L_NEG):-
		H < 0,
		NEW_L_NEG = [H|L_NEG],
		divide_aux(T, P, N, L_POS, NEW_L_NEG).
		
	divide_aux([H|T], P, N, L_POS, L_NEG):-
		H >= 0,
		NEW_L_POS = [H|L_POS],
		divide_aux(T, P, N, NEW_L_POS, L_NEG).
		
goal
	divide([1, 9, -2, 4, 0, 8], POSITIVE_LIST, NEGATIVE_LIST).
	
/*
	OUTPUT:
		POSITIVE_LIST=[8,0,4,9,1], NEGATIVE_LIST=[-2]
		1 Solution
*/