predicates
nondeterm item(integer, symbol, real, integer)
nondeterm run
nondeterm action(integer)
nondeterm price(integer)
nondeterm quantity(integer)
nondeterm submenu()

clauses
%item(id, name, price, quantity)
item(1, bread, 1, 5).
item(2, milk, 5, 20).
item(3, cola, 2.5, 100).
item(4, sweet, 0.5, 500).

%price(Item_ID)
price(X):-
	item(X, _, P, _),
	write("The Result = ", P, '\n').

%quantity(Item_ID)
quantity(X):-
	item(X, _, _, Q),
	write("The Result = ", Q, '\n').

%action(Choice)
action(1):-
	submenu,
	readInt(X),
	price(X),!.

action(2):-
	submenu,
	readInt(X),
	quantity(X),!.
	
action(_).
	
%display submenu
submenu:-
	write("Enter 1 for Bread", '\n'),
	write("Enter 2 for milk", '\n'),
	write("Enter 3 for cola", '\n'),
	write("Enter 4 for sweet", '\n').

%rule
run:-
	write("Items available: Bread, Milk, Cola, and Sweet",'\n'),
	write("Press 1 for price", '\n'),
	write("press 2 for #items", '\n'),
	readInt(X),
	action(X),
	write("Continue? [Y/N] ...", '\n'),
	readChar(C),
	upper_lower(C, 'y'),
	!,
	run.

goal
run.