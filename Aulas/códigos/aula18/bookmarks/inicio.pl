% http_handler
:- use_module(library(http/http_dispatch)).

% http:location está aqui
:- use_module(library(http/http_path)).

% serve_files_in_directory
:- use_module(library(http/http_server_files)).

% Para as ações de logging
:- use_module(library(http/http_log)).


:- use_module(library(http/http_json)).

/* Aumenta a lista de tipos aceitos pelo servidor */
:- multifile http_json/1.

http_json:json_type('application/x-javascript').
http_json:json_type('text/javascript').
http_json:json_type('text/x-javascript').
http_json:json_type('text/x-json').

:- initialization( servidor(8000) ).

/**************************************************************
 *                                                            *
 *      Localização dos diretórios no sistema de arquivos     *
 *                                                            *
 **************************************************************/

:- multifile user:file_search_path/2.

% file_search_path(Apelido, Caminho)
%     Apelido é como será chamado um Caminho absoluto ou
%     relativo no sistema de arquivos

%% Recursos estáticos
user:file_search_path(dir_css, './css').
user:file_search_path(dir_js,  './js').
user:file_search_path(dir_img, './img').
user:file_search_path(dir_webfonts, './webfonts').

%% Arquivos do Prolog comuns ao frontend e ao backend
user:file_search_path(pl, './prolog').
user:file_search_path(gabarito, pl('gabaritos')).


%% Front-end
user:file_search_path(frontend,  './frontend').


%% Backend
user:file_search_path(backend,  './backend').

% API REST
user:file_search_path(api,   backend(api)).
user:file_search_path(api1, api(v1)).

% Banco de dados
user:file_search_path(bd,  backend(bd)).


:- load_files([ servidor,
                rotas,
                gabarito(bootstrap),
                frontend(entrada),
                frontend(bookmark),
                api1(bookmarks)
              ],
	          [ silent(true)
	          ]).
