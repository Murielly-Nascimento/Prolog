/*Ex 8. Escreva um predicado tradlista(A,P) que traduz uma lista de números
escritos em alemão, para uma lista correspondente em português.*/

trad(eins,um).
trad(zwei,dois).
trad(drei,tres).
trad(vier,quatro).
trad(fuenf,cinco).
trad(sechs,seis).
trad(sieben,sete).
trad(acht,oito).
trad(neun,nove).

tradlista([],[]).
tradlista([A|As],[P|Ps]):-
	trad(A,P),
	tradlista(As,Ps).
	
