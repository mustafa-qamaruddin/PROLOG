domains
	ILIST = integer*
	
predicates
	nondeterm power(real, real, real)
	nondeterm tetration(real, real, real)
	nondeterm power_aux(real, real, real, real)
	nondeterm tetration_aux(real, real, real, real)
	
clauses
	power(B, E, R):-
		power_aux(B, E, R, 1).

	power_aux(_, 0, ACC, ACC):-!.
	
	power_aux(B, E, R, ACC):-
		NE = E - 1,
		NACC = B * ACC,
		power_aux(B, NE, R, NACC).
	
	tetration(X, Y, Z):-
		tetration_aux(X, Y, Z, 1).
		
	tetration_aux(_, 0, ACC, ACC):-!.
		
	tetration_aux(X, Y, Z, ACC):-
		NY = Y - 1,
		power(X, ACC, NACC),
		tetration_aux(X, NY, Z, NACC).
		
goal
	tetration(4, 2, A);
	tetration(1, 3, B);
	tetration(2, 4, C).