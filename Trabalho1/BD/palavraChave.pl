/* PalavraChave
*palavra(Substantivo).
*/

:-module(
	palavraChave,
	[palavraChave/1]).

:- use_module(library(persistency)).

:-persistent
	palavraChave(
  		substantivo:atom
	).

:-initialization(db_attach('tbl_palavraChave.pl',[])).

insere(Substantivo):-
	with_mutex(palavraChave,
		assert_palavraChave(Substantivo)).

remove(Substantivo):-
	with_mutex(palavraChave,
		retract_palavraChave(Substantivo)).

atualiza(Substantivo):-
	with_mutex(palavraChave,
		(retractall_palavraChave(Substantivo),
		assert_palavraChave(Substantivo))).

sincroniza:-
	db_sync(gc(always)).

listarPalavrasChaves:-
	palavraChave(Substantivo),
	write(Substantivo),
	nl,fail.
