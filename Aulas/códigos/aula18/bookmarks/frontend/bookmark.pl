/* html//1, reply_html_page  */
:- use_module(library(http/html_write)).
/* html_requires  */
:- use_module(library(http/html_head)).

:- ensure_loaded(gabarito(bootstrap)).

:- use_module(bd(bookmark)).

cadastro(_Pedido):-
    reply_html_page(
        bootstrap,
        [ title('Bookmarks')],
        [ div(class(container),
              [ \html_requires(css('all.min.css')),
                \html_requires(js('rest.js')),
                \html_requires(js('bookmark.js')),
                h1('Meus bookmarks'),
                \form_bookmark
              ]) ]).

form_bookmark -->
    html(form([ id('bookmark-form'),
                onsubmit("redirecionaResposta(event, '/')"),
                action('/api/v1/bookmarks/'), method('POST') ],
              [ \campo(titulo, 'Título', text),
                \campo(url, 'URL', url),
                button([type(submit), class('btn btn-primary')], 'Enviar')
             ])).


campo(Nome, Rótulo, Tipo) -->
    html(div(class('mb-3'),
             [ label([for(Nome), class('form-label')], Rótulo),
               input([type(Tipo), class('form-control'), id(Nome), name(Nome)])
             ] )).


/* Alterar  */

editar(AtomId, _Pedido):-
    atom_number(AtomId, Id),
    ( bookmark:bookmark(Id, Título, URL)
    ->
               reply_html_page(
                   bootstrap,
                   [ title('Bookmarks')],
                   [ div(class(container),
                         [ \html_requires(css('all.min.css')),
                           \html_requires(js('rest.js')),
                           \html_requires(js('bookmark.js')),
                           h1('Meus bookmarks'),
                           \form_bookmark(Id, Título, URL)
                         ]) ])
    ; throw(http_reply(not_found(Id)))
    ).


form_bookmark(Id, Título, URL) -->
    html(form([ id('bookmark-form'),
                onsubmit("redirecionaResposta(event, '/')"),
                action('/api/v1/bookmarks/~w' - Id), method('POST') ],
              [ \método_envio('PUT'),
                \campo_não_editável(id, 'Id', text, Id),
                \campo(titulo, 'Título', text, Título),
                \campo(url, 'URL', url, URL),
                button([type(submit), class('btn btn-primary')], 'Enviar')
             ])).


campo(Nome, Rótulo, Tipo, Valor) -->
    html(div(class('mb-3'),
             [ label([ for(Nome), class('form-label')], Rótulo),
               input([ type(Tipo), class('form-control'),
                       id(Nome), name(Nome), value(Valor)])
             ] )).

campo_não_editável(Nome, Rótulo, Tipo, Valor) -->
    html(div(class('mb-3'),
             [ label([ for(Nome), class('form-label')], Rótulo),
               input([ type(Tipo), class('form-control'),
                       id(Nome), name(Nome), value(Valor),
                       readonly ])
             ] )).

método_envio(Método) -->
    html(input([type(hidden), name('_método'), value(Método)])).
