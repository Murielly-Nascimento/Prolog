/*Ex. 5 Usando o predicado viagem para consultar a base de dados anterior
pode-se deduzir que é possı́vel ir de Valmont para Raglan. No caso
de estar planejando uma viagem, isto é uma boa informação, mas o
que você realmente deseja saber é como exatamente ir de Valmont a
Raglan. Escreva um predicado viagem que diga a você como viajar
de um lugar para o outro. Exemplos de consultas:*/

deCarro(auckland,hamilton).
deCarro(hamilton,raglan).
deCarro(valmont,saarbruecken).
deCarro(valmont,metz).

deTrem(metz,frankfurt).
deTrem(metz,paris).
deTrem(saarbruecken,frankfurt).
deTrem(saarbruecken,paris).

deAviao(frankfurt,bangkok).
deAviao(frankfurt,singapore).
deAviao(paris,losAngeles).
deAviao(losAngeles,auckland).
deAviao(bangkok,auckland).

vai_de(X,Y):- deCarro(X,Y);deAviao(X,Y);deTrem(X,Y).

viagem(X,Y,vai(X,Y)):-vai_de(X,Y).
viagem(X,Y,vai(X,Z,C)):-vai_de(X,Z),viagem(Z,Y,C).
