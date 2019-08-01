p(1).
p(2):-!.

p(3).



classe(Numero,positivo)  :-  Numero  >  0,!.


classe(0,positivo) :- !.


classe(Numero,negativo)  :-  Numero  <  0 ,!.



divide(X,Y,S) :-
 divides(X,Y,S),!.


divides([],[],[]).


divides([H|T],[H|L],L1):-
    classe(H,positivo),

    divides(T,L,L1).

%append(H,LS,L).


divides([H|T],L,[H|L1]) :-
 classe(H,negativo),

    divides(T,L,L1).
    
%append(H,L1S,L1).
