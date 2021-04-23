país(alemanha,europa,83,[frança,bélgica,holanda,suíça]).
país(bélgica,europa,11,[frança,holanda,alemanha]).
país(espanha,europa,47,[portugal,frança]).
país(frança,europa,67,[espanha,suíça,bélgica,alemanha,itália]).
país(holanda,europa,17,[bélgica,alemanha]).
país(itália,europa,60,[frança,suíça]).
país(portugal,europa,10,[espanha]).
país(suíça,europa,8,[frança,alemanha,itália]).
país(austrália,oceania,25,[]).
país(indonésia,oceania,268,[]).
país(madagascar,áfrica,26,[]).

membro(X,[X|_]).
membro(X,[_|T]):-
	membro(X,T).
    
sem_repeticao([],[]).
sem_repeticao([H | T], Lista) :-    
     membro(H, T),
     sem_repeticao(T, Lista).

sem_repeticao([H | T], [H | T1]) :- 
      sem_repeticao(T, T1).

sum(Continente):-
    findall(Nome,país(Nome,Continente,_,_),Lista),
    length(Lista,Resultado),
    Resultado >= 2. 

fronteira(Fronteira):-
    length(Fronteira,Tamanho),
    Tamanho =< 2.
   
isolados_grandes(Lista):-
    findall(Continente,(país(_,Continente,População,Fronteira),População > 15,fronteira(Fronteira),sum(Continente)),Lista1),
    sem_repeticao(Lista1,Lista),!.