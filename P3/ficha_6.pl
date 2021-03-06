% progenitor(pai,filho)

progenitor(jose,ana).
progenitor(paula,ana).
progenitor(jose,miguel).
progenitor(paula,miguel).
progenitor(julia,joaquim).
progenitor(julia,manuel).
progenitor(julio,joaquim).
progenitor(julio,manuel).
progenitor(joaquim,rui).
progenitor(ana,rui).
progenitor(joaquim,paulo).
progenitor(ana,paulo).
progenitor(paulo,guilherme).
progenitor(paulo,rita).
progenitor(cristina,guilherme).
progenitor(cristina,rita).
progenitor(rui,pedro).
progenitor(rui,claudia).
progenitor(patricia,pedro).
progenitor(patricia,claudia).
progenitor(manuel,isabel).
progenitor(luisa,isabel).
progenitor(maria,cristina).
progenitor(joao,cristina).

homem(jose).
homem(miguel).
homem(joaquim).
homem(manuel).
homem(julio).
homem(rui).
homem(paulo).
homem(guilherme).
homem(pedro).
homem(joao).

mulher(paula).
mulher(ana).
mulher(julia).
mulher(cristina).
mulher(rita).
mulher(patricia).
mulher(claudia).
mulher(isabel).
mulher(maria).
mulher(luisa).

pai(P,F) :- progenitor(P,F), homem(P).
mae(M,F) :- progenitor(M,F), mulher(M).
    
antepassado(P,F) :- progenitor(P,F).
antepassado(P,F) :- progenitor(P,X), antepassado(X,F).

