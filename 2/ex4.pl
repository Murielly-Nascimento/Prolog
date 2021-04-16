/*Imagine que você resolva passear mundo afora e possua a seguinte base
de conhecimento sobre opções de transporte entre cidades:*/

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

/*Escreva um predicado viagem que determine se é possı́vel viajar
de um lugar a outro usando qualquer meio de transporte disponı́vel:
carro, trem e avião. Por exemplo, seu programa deveria responder
true para a consulta viagem(valmont,raglan) .*/
	
vai_de(X,Y):- deCarro(X,Y);deAviao(X,Y);deTrem(X,Y).

viagem(X,Y):-vai_de(X,Y).
viagem(X,Y):-vai_de(X,Z),viagem(Z,Y).
