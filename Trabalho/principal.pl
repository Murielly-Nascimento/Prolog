:- use_module(library(http/thread_httpd)).            % responsável pelo gerenciamento de conexões 
:- use_module(library(http/http_dispatch)).           % permite associar rotas HTTP com os predicados definidos
:- use_module(library(http/html_write)).              % predicados HTML
:- use_module(library(http/html_head)).               % html_requires está aqui
:- use_module(library(http/http_server_files)).       % serve_files_in_directory está aqui

% Informamos a porta que o servidor escutará
servidor(Porta) :-                                    
  http_server(http_dispatch, [port(Porta)]).

% Localização dos diretórios no sistema de arquivos
:- multifile user:file_search_path/2.               
user:file_search_path(dir_css, 'css').
user:file_search_path(dir_js,  'js').


% Liga as rotas aos respectivos diretórios
:- http_handler(css(.),
              serve_files_in_directory(dir_css), [prefix]).
:- http_handler(js(.),
              serve_files_in_directory(dir_js), [prefix]).

% Gabaritos
:- multifile user:body//2.

user:body(bootstrap, Corpo) -->
  html(body([ 
    %Enviamos este conteúdo para a cabeça do HTML
    \html_post(head,[
      meta([name(viewport),content('width=device-width, initial-scale=1')])
    ]),
    %Definimos atributos da tag html
    \html_root_attribute(lang,'pt-br'),

    %Incluímos o arquivo css que usaremos
    \html_requires(css('bootstrap.min.css')),

    Corpo,

    %Incluindo o arquivo JavaScript no final do corpo HTML
    script([ src('js/bootstrap.bundle.min.js'),type('text/javascript')], [])
  ])).



% Liga a rota ao tratador
% http_handle(Rota, Tratador, Opções).
% Qual predicado tratará os pedidos feitos pela rota dada
:- http_handler(root(.), home , []).
:- http_handler(root(orientador), orientador , []).
:- http_handler(root(autor), autor , []).
:- http_handler(root(funcionario), funcionario , []).
:- http_handler(root(palavraChave), palavraChave , []).
:- http_handler(root(curso), curso , []).
:- http_handler(root(instituicao), instituicao , []).

% Tratadores

home(_Pedido) :-
  reply_html_page(
    bootstrap,
    [ title('Trabalho de Prolog')],
    [ div(class(container),
      [ h1('ADS Library - Projeto de Biblioteca Digital de Trabalhos de Graduações'),
        nav(class(['nav', 'flex-column']),
          [ \curso,
            \instituicao]
        )
      ]
    )]
  ).

curso(_Pedido) :-
  reply_html_page(
    bootstrap,
    [ title('Curso')],
    [ div(class(container),
      [ \html_requires(css('estilo.css')),
        h2(class("my-5 text-center"),'Cadastro de cursos da Faculdade'),
        div(class('mb-3 row'),[
          label([for('sigla'),class('col-sm-2 col-form-label')],'Sigla'),
          div(class('col-sm-10'),[
            input([type('sigla'),class('form-control'),id('colocaSigla')])
          ])
        ]),
        div(class('mb-3 row'),[
          label([for('nome'),class('col-sm-2 col-form-label')],'Nome'),
          div(class('col-sm-10'),[
            input([type('nome'),class('form-control'),id('colocaNome')])
          ])
        ]),
        form(class('form-inline'),[
          label([class('my-1 mr-2'), for('inlineFormCustomSelectPref')],'Instituição'),
          select([class('custom-select my-1 mr-sm-2'),id('inlineFormCustomSelectPref')],[
            option([selected],'Selecione uma Instituição'),
            option(value('1'),'Um'),
            option(value('2'),'Dois'),
            option(value('3'),'Três'),
            option(value('4'),'Quatro')
          ])
        ]),
        \retorna_home
      ]
    )]
  ).           

instituicao(_Pedido) :-
  reply_html_page(
    bootstrap,
    [ title('Instituição')],
    [ div(class(container),
      [ \html_requires(css('estilo.css')),
        h2(class("my-5 text-center"),'Instituições Cadastradas'),
        form([
          div(class('row'),[
            div(class('col'),[
              label([for('sigla'),class('form-label')],'Sigla'),
              input([type('text'),class('form-control'),placeholder('Sigla')])
            ]),
            div(class('col'),[
              label([for('nome'),class('form-label')],'Nome'),
              input([type('text'),class('form-control'),placeholder('Nome')])
            ]),
            div(class('col'),[
              label([for('cidade'),class('form-label')],'Cidade'),
              input([type('text'),class('form-control'),placeholder('Cidade')])
            ]),
            div(class('col'),[
              label([for('editar'),class('form-label')],'Editar')
            ]),
            div(class('col'),[
              label([for('excluir'),class('form-label')],'Excluir')
            ])
          ])
        ]),
        \retorna_home
      ]
    )]
  ).

% Links

curso -->
  html(a([ class(['nav-link']),href('/curso')],'Curso')).
          
instituicao -->
    html(a([ class(['nav-link']),href('/instituicao')],'Instituição')).

retorna_home -->
  html(div(class(row),
    a([ class(['btn', 'btn-primary']),href('/')],'Voltar para o início')
  )).
         
     
