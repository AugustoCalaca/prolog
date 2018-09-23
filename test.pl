% fatos
gerou(kelly, maria).
gerou(cleber, maria).
gerou(cleber, bruna).
gerou(maria, julia).
gerou(maria, pedro).
gerou(pedro, lucas).

feminino(kelly).
feminino(maria).
feminino(bruna).
feminino(julia).

masculino(cleber).
masculino(pedro).
masculino(lucas).

% regras
filho(X, Y) :- gerou(Y, X).
mae(X, Y) :- gerou(X, Y), feminino(X).