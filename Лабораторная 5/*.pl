%1
even(X):- X mod 2 =:= 0.

print_uneven(X,Y):-
	not(even(Y)),
	write(Y), write(" "), fail.

print_uneven(X, Y):-
	Y \== X, Y1 is Y - 1, print_uneven(X, Y1).

uneven(Z, Y):-
    print_uneven(Z, Y).

:-write("(1) "),uneven(-5, 3).


%2
calc_fibonacci(0, Y) :- Y is 0, !.
calc_fibonacci(1, Y) :- Y is 1, !.

calc_fibonacci(X, Y) :-
	X1 is X - 2,
	X2 is X - 1,
	calc_fibonacci(X1, Y1),
	calc_fibonacci(X2, Y2),
	Y is Y1 + Y2.

fibonacci(X) :-
	repeat,
	(X < 0, !; calc_fibonacci(X, Y), write(Y)).

:-nl, write("(2) "),fibonacci(0),write(", "),fibonacci(-4),write(", "),fibonacci(1),write(", "),fibonacci(2),write(", "),fibonacci(3),write(", ").


%3
split :-
        read(List),read(A),read(B),split_prepare(A, B, Min, Max),
        split_rec(List, Min, Max, List1, List2, List3),
        write(List1), write(List2), writeln(List3).
 
    split_prepare(A, B, Min, Max) :- A > B, !, Max = A, Min = B; Max = B, Min = A.
 
    split_rec([], _, _, [], [], []).
       
    split_rec([Head|Tail], A, B, [Head|List1], List2, List3) :-
        Head < A, !,split_rec(Tail, A, B, List1, List2, List3).
    split_rec([Head|Tail], A, B, List1, [Head|List2], List3) :-
        Head =< B, !, split_rec(Tail, A, B, List1, List2, List3).
    split_rec([Head|Tail], A, B, List1, List2, [Head|List3]) :-
        Head > B, !, split_rec(Tail, A, B, List1, List2, List3).

:-nl, write("(3)"), split_rec([3,7,1,-3,5,8,0,9,2], 8, 3).

        
%4

:-nl, write("(4)").
