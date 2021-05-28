:- load_files([ funcionario,
                departamento
              ],
	          [ if(not_loaded), % só carrega o módulo uma vez
                silent(true) % carrega o módulo sem imprimir mensagem
	          ]).

junta(MatFunc, NomeF, NumDeptoF, Salário, MatGerenteF,
      NumDeptoF, NomeDepD, MatGerenteD):-
    funcionário(MatFunc, NomeF, NumDeptoF, Salário, MatGerenteF),
    departamento(NumDeptoF, NomeDepD, MatGerenteD).

/* exemplo de uso: encontrar todas as tuplas da junção acima.

findall( (F,Nf,ND,S, MGF, NDep, Nd, MGd),
         junta(F,Nf,ND,S, MGF, NDep, Nd, MGd),
         Junção).

*/
