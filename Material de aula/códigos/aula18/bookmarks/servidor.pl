% http_server
:- use_module(library(http/thread_httpd)).

% http_dispatch
:- use_module(library(http/http_dispatch)).


servidor(Porta) :-
    http_server(http_dispatch, [port(Porta)]).
