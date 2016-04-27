%ex1
zeroInit(L) :-  L = [C | _ ],  C = 0.

%ex2
has5(L) :- L = [_,_,_,_,_].

%ex3
hasN(L,N) :- length(L, X), X =:= N.

%ex4
potN0(-1,[]).
potN0(N,L):- 
N >= 0,
H is 2^N,
L = [H | T],
N1 is N-1, 
potN0(N1,T).

%ex5
zipmult([],[],[]).
zipmult( [H|T] , [H1|T1] , L):- X is H*H1 , L = [X | T2] , zipmult(T,T1,T2).

%ex6
potencias(0, []).
potencias(A,L):- aux(0,L,A).

aux(_,[],0).
aux(X,L,A):-
X1 is 2 ^ X,
L=[X1|T],
X2 is X + 1,
B is A - 1,
A > -1,
aux(X2,T,B).

%ex7

positivos([],[]).
positivos([H|T] , L ) :- H < 0 , positivos(T,L).
positivos([H|T] , [H|L1]) :- H>=0 , positivos(T,L1).

%ex8
mesmaPosicao(_,[],[]):- false.
mesmaPosicao(A,L1,L2):- L1 = [H | _] ,
 L2 = [H1 | _], 
 A == H, A == H1.
mesmaPosicao(A,L1,L2):-
 L1 = [H | T] ,
 L2 = [H1 | T1], 
 A \= H, A \= H1,
mesmaPosicao(A,T,T1).

%ex9
comissao(0,_,[]).
comissao(N,[H|T],[H|Comb]):-N>0,N1 is N-1,comissao(N1,T,Comb).
comissao(N,[_|T],Comb):-N>0,comissao(N,T,Comb).

%ex10
azulejos(0,0) :- !.
azulejos(NA,NP) :- floor(sqrt(NA), X), Z is -(X*X)+ NA,azulejos(Z, NP1),NP is 1 + NP1.


