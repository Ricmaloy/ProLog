split(L,P,N) :-
    splits(L,P,N).

splits([],[],[]).

splits([H | T],[H|P],N) :-
    H >= 0,
    !,
    splits(T,P,N).

splits([H | T],P,[H|N]) :-
    H < 0,
    splits(T,P,N).

:- dynamic fib/2.

addfib(0,1):- !.
addfib(1,1):- !.

addfib(X,Y) :-
    fib(X,Y),!.

addfib(X,Y):-
    X1 is X - 1,
    X2 is X - 2,
    addfib(X1,Y1),
    addfib(X2,Y2),
    Y is Y1 + Y2,
    assert(fib(X,Y)).


:- dynamic fat/2.


addfat(0,Y):-
    Y is 1.

addfat(X,Y):-
    fat(X,Y),!.

addfat(X,Y):-
    X > 0,
    X1 is X - 1,
    addfat(X1,Y1),
    Y is X*Y1,
    assert(fat(X,Y)).

%setof(fat(X,Y),fat(X,Y),L).


:- dynamic lookup/3.

addAndSquare(X,Y,Res):-
    lookup(X,Y,Res),!.

addAndSquare(X,Y,Res):-
    Res is (X+Y)*(X+Y),
    assert(lookup(X,Y,Res)).




checkCharAndReadRest(10,[],_) :- !.
checkCharAndReadRest(32,[],_) :- !.
checkCharAndReadRest(-1,[],_) :- !.
checkCharAndReadRest(Char,[Char|Chars],S) :-
    get_code(S,NextChar),
    checkCharAndReadRest(NextChar,Chars,S).

readword(Stream,Word):-
    get_code(Stream,Char),
    checkCharAndReadRest(Char,Chars,Stream),
    atom_codes(Word,Chars).

result([],0).
result([H|T],S):-
    result(T,G),
    S is H+G.

main:-
    open('S.txt',read,S),
    readWord(S,H1),
    atom_number(H1,A),
    readWord(S,H2),
    atom_number(H2,B),
    readWord(S,H3),
    atom_number(H3,C),
    readWord(S,H4),
    atom_number(H4,D),
    readWord(S,H5),
    atom_number(H5,E),
    readWord(S,H6),
    atom_number(H6,F),
    readWord(S,H7),
    atom_number(H7,G),
    result([A,B,C,D,E,F,G],S),
    close(S).

readWord(S,[]):-
    at_end_of_stream(S),!.

readWord(S,[X|L]):-
    \+ at_end_of_stream(S),!,
    read(S,X),
    readWord(S,L).









