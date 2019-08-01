grade(computacao, [ip, calculo1, aed1, aed2, calculo2, poo1, poo2]).
historico(marcelo, [ip, calculo1, calculo2]).
historico(francisco, [ip, redes, aed1, calculo1, poo1, poo2, calculo3, calculo2]).

formado(X,Y):-
    formados(X,Y).

formados(X, Y) :-
    historico(X, H),
    grade(Y, D),
    sublista(D, H).

pendencias_para_formar(X, Y, P) :-
    pendencias_para_formars(X, Y, P).

pendencias_para_formars(X, Y, P) :-
    historico(X, H),
    grade(Y, D),
    diflista(D, H, P).

elemEstaNaLista(X, [X|_]).
elemEstaNaLista(X, [H|T]):-
    X =\= H,
    elemEstaNaLista(X, T).

sublista([], _).
sublista([H|T], L2):-
    elemEstaNaLista(H, L2),
    sublista(T, L2).

diflista(L1,L2,P):-
    diflistaaux(L1,L2,[],P).

diflistaaux(_,[],D, D).

diflistaaux([],_,D,D).

diflistaaux([X|L1], L2, Dif, T):-
	member(X,L2),
	diflistaaux(L1, L2, Dif, T).

diflistaaux([X|L1], L2, Dif, T):-
	diflistaaux(L1, L2, [X|Dif], T).
