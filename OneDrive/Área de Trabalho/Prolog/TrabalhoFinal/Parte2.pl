%Grupo : Ricardo Zamboni Silva e Guilherme Raimondi

:- dynamic nome/1.
:- dynamic genero/1.
:- dynamic ano/1.
:- dynamic ator/1.
:- dynamic diretor/1.
:- dynamic seriefilme/1.
:- dynamic tags/1.
:- dynamic estudio/1.
:- discontiguous search/1.
:- dynamic filme/8.
:- discontiguous filme/8.
:-[bancodefilmes].


menu:-
    write(' '),nl,
    write('Selecione uma opcao :'),nl,
    write('1 - inserir a restrição'),nl,
    write('2 - remover uma restrição'),nl,
    write('3 - listar todas as restrições'),nl,
    write('4 - listar os filmes'),nl,
    read(Opc),nl,
    escolha(Opc),
    menu.

escolha(Opc):-
    Opc==1,
    write('Insira a restricao que deseja inserir:'),nl,
    read(X),
    insere_res(X).

escolha(Opc):-
    Opc==2,
    write('Insira a restricao que deseja remover:'),nl,
    read(X),
    remove_res(X).

escolha(Opc):-
    Opc==3,
    lista_res(L),
    write(L),nl.

escolha(Opc):-
    Opc==4,
    searchs(L),
    write(L),nl.

res(X):-
    nome(X).

res(X):-
    genero(X).

res(X):-
    ano(X).

res(X):-
    ator(X).

res(X):-
    diretor(X).

res(X):-
    seriefilme(X).

res(X):-
    tags(X).

res(X):-
    estudio(X).

insere_res(X):-
    assert(X).

remove_res(X):-
    retract(X).

lista_res(L):-
    setof(X,res(X), L).

lista_res([]):-
    \+res(_).

searchs(L):-
    setof(X,search(X), L).

searchs([]):-
    \+search(_).

search(X):-
    lista_res([]),
    filme(X,_,_,_,_,_,_,_).

search(X):-
    res(X),
    filme(X,_,_,_,_,_,_,_).

search(X):-
    res(Y),
    filme(X,Y,_,_,_,_,_,_).

search(X):-
    res(Y),
    filme(X,_,Y,_,_,_,_,_).

search(X):-
    res(Y),
    filme(X,_,_,L,_,_,_,_),
    member(Y,L).

search(X):-
    res(Y),
    filme(X,_,_,_,Y,_,_,_).

search(X):-
    res(Y),
    filme(X,_,_,_,_,Y,_,_).

search(X):-
    res(Y),
    filme(X,_,_,_,_,_,L,_),
    member(Y,L).

search(X):-
    res(Y),
    filme(X,_,_,_,_,_,_,Y).












