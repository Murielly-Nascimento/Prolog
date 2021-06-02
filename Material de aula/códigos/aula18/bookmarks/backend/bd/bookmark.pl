:- module(
       bookmark,
       [ bookmark/3, insere/3, remove/1, atualiza/3 ]).

:- use_module(library(persistency)).

:- use_module(bd(chave)).

:- persistent
   bookmark( id:nonneg,
             título:string,
             url:string ).

:- initialization( ( db_attach('./backend/bd/tbl_bookmark.pl', []),
                     at_halt(db_sync(gc(always))) )).


insere(Id, Título, URL):-
    chave:pk(bookmark, Id),
    with_mutex(bookmark,
               assert_bookmark(Id, Título, URL)).

remove(Id):-
    with_mutex(bookmark,
               retractall_bookmark(Id, _Título, _URL)).

atualiza(Id, Título, URL):-
    with_mutex(bookmark,
               ( retractall_bookmark(Id, _Título, _URL),
                 assert_bookmark(Id, Título, URL)) ).
