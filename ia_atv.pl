% Francisco Augusto Calaca
% Germano Gomes
%
% fatos questoes 1 a 3

codvendedor(alvaro, 1952).
codvendedor(ricardo, 1876).
codvendedor(neto, 1174).

codvenda(1952, 213).
codvenda(1876, 567).
codvenda(1876, 421).
codvenda(1174, 453).

valorvenda(213, 2657.00).
valorvenda(567, 587.00).
valorvenda(421, 1157.52).
valorvenda(453, 11235.14).


% regra para questao 1 para qualquer codigo

resp1(Cod) :- codvenda(X, Cod), codvendedor(Y, X), writeln(Y).


% regra para questao 2 para qualquer codigo

resp2(Cod) :- forall(codvenda(Cod, X), writeln(X)).


% regra para questao 3

resp3 :- valorvenda(
  Cod, 11235.14),
  codvenda(Cod2, Cod),
  codvendedor(N, Cod2),
  writeln([ Cod2, N ]
).


% fatos questoes 4 a 5

dependente(107, joana).
dependente(107, bia).
dependente(290, lia).
dependente(405, rai).
dependente(405, ary).
dependente(405, noe).

pagamento(107, ana, 5500).
pagamento(290, rui, 7850).
pagamento(368, eva, 2392).
pagamento(405, ivo, 4700).


% regra para questao 4

resp4 :- forall((
    pagamento(Cod, _, Sala),
    Sala =< 5500,
    dependente(Cod, Nome)
  ),
  writeln(Nome)
).


% regra para questao 5

resp5 :- forall((
    pagamento(_, Nome, Sala),
    Sala >= 3000,
    Sala =< 6000
  ),
  writeln(Nome)
).


% fatos para questoes 6 e 7

pais(brasil, 8, 196).
pais(china, 9, 1330).
pais(eua, 9, 304).
pais(india, 3, 1147).


% regra para questao 6

resp6 :- pais(brasil, Area, Popu),
  Densi is Popu / Area,
  writeln(Densi).


% regra para questao 7

resp7 :- forall((
    pais(india, _, Popu),
    pais(N, _, P),
    P < Popu
  ),
  writeln(N)
).


% fatos para questoes 8 a 10

gerou(ana, eva).
gerou(ivo, eva).

gerou(bia, rai).
gerou(gil, rai).
gerou(bia, cio).
gerou(gil, cio).
gerou(bia, ary).
gerou(gil, ary).

gerou(eva, noe).
gerou(rai, noe).

gerou(ary, gal).
gerou(lia, gal).


% regra para questao 8

irmao(X, Y) :- gerou(Z, X), gerou(Z, Y), X \== Y.
sobrinho(X, Y) :- gerou(Z, X), irmao(Z, Y).


% regra para questao 9

casado(X, Y) :- gerou(X, Z), gerou(Y, Z), X \== Y.


% regra para questao 10

filhode(X, Y, Z) :- gerou(Y, X), gerou(Z, X).