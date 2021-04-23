:-dynamic res_somatório/2.

somatório(Fim,0,Acc,Acc):-
	assertz(res_somatório(Fim,Acc)).

somatório(Fim,Aux,Acc,Resultado):-
	Fim > 0,
	NovoF is Aux-1,
	NovoAcc is Acc + 1,
	somatório(Fim,NovoF,NovoAcc,Resultado).

somatório(Fim,Resultado):-
	somatório(Fim,Fim,1,Resultado).