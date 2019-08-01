media(L,R):-
medias(L,0,0,R).

medias([],X,Y,R):-
R is X/Y.

medias([H|T],X,Tam,Y):-
Tam1 is Tam+1,
A is X+H,
medias(T,A,Tam1,Y).


soma(L,L1,R):-
somas(L,L1,[],R).


somas([],[],X,R):-
inverter(X,R).

somas([H|T],[H1|T1],Lis,R):-
Temp is H+H1,
somas(T,T1,[Temp|Lis],R).

inverter([],[]).
inverter([X|Y],R):-
inverter(Y,R1),
append(R1,[X],R).


produto_escalar(L,L1,R):-
produto_escalars(L,L1,[],R).

produto_escalars([],[],X,Y):-
soma_v(X,Y).

produto_escalars([H|T],[H1|T1],Lis,R):-
Temp is H*H1,
produto_escalars(T,T1,[Temp|Lis],R).

soma_v([],0).
soma_v([H|T],R):-
soma_v(T,R1),
R is R1+H.


%produto_escalar_CC(L,L1,R):-
 % produto_escalar_CCS(




%mult_2lista(X,Y,Z):-
 %   mult_2listas(X,Y,Z).

  %  mult_2listas([],[],[]).
   % mult_2listas([H|T],[H1|T1],[R|R1]):-
    %    mult_2lista(T,T1,[R|R1]),
     %   R is H1*H.






mediaCC(L,R):-
    soma_v(L,S),
    tam_lista(L,P),
    R is S/P.


tam_lista(X,Y):-
   tam_listas(X,Y).

   tam_listas([],0).
   tam_listas([_|T],R):-
        tam_listas(T,R1),
        R is R1 + 1.


soma_lista(X,Y):-
   soma_listas(X,Y).

   soma_listas([],0).
   soma_listas([H|T],R):-
       soma_listas(T,R1),
       R is R1 + H.

mult_lista(X,Y):-
    mult_listas(X,Y).

    mult_listas([],1).
    mult_listas([H|T],R):-
        mult_lista(T,R1),
        R is R1*H.


insere_inic(Y,X,[X|Y]).

insere_fim(X,Y,Z):-
    append(Y,[X],Z).

element_at(X,Y,R):-
   element_ats(X,Y,R).

   element_ats(X,[X|_],1).
   element_ats(X,[_|T],R):-
   R1 is R-1,
   element_ats(X,T,R1).


iguais([],[]).
iguais([X|T1],[X|T2]):-
iguais(T1,T2).


ehpali(L):-
ehpalis(L,L).

ehpalis(L,L1):-
 inverter(L,R),
 iguais(L1,R).

dupli(L,R):-
  duplis(L,R).

  duplis([],[]).
duplis([H|T],[H,H|T1]):-
   dupli(T,T1).

fat(0,1).
fat(X,Y):-
   Z is X-1,
   fat(Z,Y1),
   Y is  X*Y1.

range(X,X,[X]).
range(X,Y,[X|L]):-
X < Y,
X1 is X+1,
range(X1,Y,L).




















