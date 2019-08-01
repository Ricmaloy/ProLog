q(blob,blug).

q(blob,blag).

q(blob,blig).

q(blaf,blag).

q(dang,dong).

q(dang,blug).

q(flab,blob).


:-dynamic lookup/2.


sigma(X,R):-
    sigmas(X,R).


sigmas(X,R):-
    lookup(X,R),!.


sigmas(X,R):-
    soma(X,R),

    assert(lookup(X,R)).


soma(0,0):-!.


soma(X,R):-

    X1 is X-1,

    soma(X1,R1),

    R is R1 + X.
