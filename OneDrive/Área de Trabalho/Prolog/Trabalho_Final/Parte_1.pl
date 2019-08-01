%Grupo : Ricardo Zamboni Silva e Guilherme Raimondi

:-dynamic nome/1.
:-dynamic genero/1.
:-dynamic ano/1.
:-dynamic ator/1.
:-dynamic diretor/1.
:-dynamic seriefilme/1.
:-dynamic tags/1.
:-dynamic estudio/1.
:-dynamic filme/8.
:- discontiguous filme/8.

insere_filme(Nome,Genero,Ano,Ator,Diretor,SerieFilme,Tags,Estudio):-
    open('bancodefilmes.pl',append,Stream),
    atom_string(Nome,X),
    write(Stream,filme(X, Genero, Ano, Ator, Diretor, SerieFilme, Tags, Estudio)),
    write(Stream, '.'), nl(Stream),
    write(Stream,nomes(X)),
    write(Stream, '.'), nl(Stream),
    write(Stream,generos(Genero)),
    write(Stream, '.'), nl(Stream),
    write(Stream,anos(Ano)),
    write(Stream, '.'), nl(Stream),
    write(Stream,ators(Ator)),
    write(Stream, '.'), nl(Stream),
    write(Stream,diretors(Diretor)),
    write(Stream, '.'), nl(Stream),
    write(Stream,seriefilmes(SerieFilme)),
    write(Stream, '.'), nl(Stream),
    write(Stream,tagss(Tags)),
    write(Stream, '.'), nl(Stream),
    write(Stream,estudios(Estudio)),
    write(Stream, '.'), nl(Stream),
    close(Stream).















