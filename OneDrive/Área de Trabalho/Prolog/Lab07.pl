distancia(uberlandia,catalao,100).
distancia(uberlandia,itumbiara,100).
distancia(cristalina,brasilia,100).
distancia(uberlandia,araxa,200).
distancia(catalao,cristalina,200).
distancia(itumbiara,goiania,200).
distancia(goiania,brasilia,250).
distancia(catalao,goiania,260).
distancia(araxa,belo_horizonte,350).
distancia(sao_paulo,rio_de_janeiro,400).
distancia(belo_horizonte,brasilia,700).


exist_caminho(X,Y):-
	distancia(X,Y,_).
exist_caminho(X,Y):-
        distancia(Y,X,_).

exist_caminho(X,Y):-
        distancia(Y,Z,_),
        exist_caminho(Z,X).
exist_caminho(X,Y):-
	distancia(X,Z,_),
	exist_caminho(Z,Y).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

caminho(X,Y,LP,LP):-
	distancia(X,Y,_).

caminho(X,Y,LP,LF):-
        distancia(X,Z,_),
        append(LP,[Z],NovaLP),
        caminho(Z,Y,NovaLP,LF).


listadecaminhos(X,Y,L):-
        caminho(X,Y,[],L).
