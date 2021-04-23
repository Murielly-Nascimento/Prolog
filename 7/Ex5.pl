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

populacao(País,País):-país(_,_,População,_), População > 15.

pop_elevada(Continente,Lista):-
    findall(População-Nome,(país(Nome,Continente,População,_),População > 15),Lista1),
    keysort(Lista1,Lista).