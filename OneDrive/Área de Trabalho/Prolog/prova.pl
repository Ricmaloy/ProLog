ama(joao,tereza).
ama(tereza,raimundo).
ama(raimundo,maria).
ama(maria,joaquim).
ama(joaquim,silvio).
ama(silvio,ana).
ama(ana,zeca).
ama(zeca,rita).
ama(rita,fabio).
morreu(fabio).

morreu(X) :-
    ama(X,_).

pedido(marcelo, [item('pao', 5, 1.20), item('queijo', 0.5, 30.0), item('leite', 2, 4.00)]).
pedido(ana, []).

totaliza_pedido(Pessoa, Total) :-
    pedido(Pessoa, ListaItens),
    totaliza_lista(ListaItens, Total).

totaliza_lista([], 0).

totaliza_lista([item(_, Qtd, Preco) | R], Total) :-
    totaliza_lista(R, TotalParcial),
    Total is TotalParcial + Qtd*Preco.


totaliza_pedido_SC(X, Total):-
    pedido(X, ListaItens),
    totaliza_lista_SC(ListaItens, 0, Total).

totaliza_lista_SC([], Acumulador, Acumulador).
totaliza_lista_SC([item(_, Qtd, Preco) | T], Acumulador, Total):-
    NovoAcumulador is Acumulador + Qtd*Preco,
    totaliza_lista_SC(T, NovoAcumulador, Total).

