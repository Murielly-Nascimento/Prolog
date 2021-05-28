/*E. 12 Escreva um predicado triplas-1 que unifique seu argumento, via retrocesso, com todas
as triplas [X, Y, Z] que satisfazem às seguintes condições:*/

triplas(Triplas):-
    Triplas = [X,Y,Z],
    X is -1*(Y * Z) div (-10*Y + 9*Z),
    Y is (-9*X*Z) div (Z - 10*X),
    Z is (10 * X * Y) div (9 * X + Y),
    X >= 0 , X =< 9,
    Y >= 0 , Y =< 9,
    Z >= 0 , Z =< 9.

/*Observação: Não consegui fazer esse predicado funcionar.*/
    
