:-dynamic registro/2.

agenda :-
  new(D,dialog('Agenda')),
  send(D,append(new(Nome,text_item(nome)))),
  send(D,append(new(Telefone,text_item(telefone)))),
  send(D,append(button(add_item, and(message(@prolog, assert_item,
                                             Nome?selection,
                                             Telefone?selection),
                                     message(Nome, clear),
                                     message(Telefone,clear),
                                     message(Nome,keyboard_focus, true))))),
  send(D,append(button(cancel, message(D,destroy)))),
  send(D,default_button(add_item)),
  send(D,open).

assert_item(Nome,Telefone) :-
        atom_number(Telefone,T),
        assert(registro(Nome,T)).





