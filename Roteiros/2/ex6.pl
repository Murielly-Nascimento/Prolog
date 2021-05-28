/*6) Estenda o predicado viagem3 tal que ele não somente diga a você
em quais cidades intermediárias você passará, mas também como ir de
uma cidade a outra, ou seja, de carro, trem ou avião.*/

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

viagem(X,Y,vai(X,deCarro,Y)):-deCarro(X,Y).
viagem(X,Y,vai(X,deTrem,Y)):-deTrem(X,Y).
viagem(X,Y,vai(X,deAviao,Y)):-deAviao(X,Y).

viagem(X,Y,vai(X,deCarro,Z,C)):- deCarro(X,Z),viagem(Z,Y,C).
viagem(X,Y,vai(X,deTrem,Z,C)):- deTrem(X,Z),viagem(Z,Y,C).
viagem(X,Y,vai(X,deAviao,Z,C)):- deAviao(X,Z),viagem(Z,Y,C).
