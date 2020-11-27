%PROVINCIA AZUAY
provinciaA(cuenca,azuay).
provinciaA(paute,azuay).
provinciaA(sevilla_de_oro,azuay).
provinciaA(chordeleg,azuay).
provinciaA(pucura,azuay).
provinciaA(gualaceo,azuay).
provinciaA(santa_isabel,azuay).
provinciaA(camilo_ponce_enrique,azuay).
provinciaA(sigsig,azuay).
provinciaA(san_fernando,azuay).
provinciaA(nabon,azuay).
provinciaA(onia,azuay).
provinciaA(giron,azuay).
provinciaA(el_pan,azuay).
provinciaA(guachapala,azuay).
%PROVINCIA GUAYAS
provinciaG(guayaquil,guayas).
provinciaG(daule,guayas).
provinciaG(duran,guayas).
provinciaG(balao,guayas).
provinciaG(balzar,guayas).
provinciaG(colimes,guayas).
provinciaG(el_empalme,guayas).
provinciaG(el_triunfo,guayas).
provinciaG(milagro,guayas).
provinciaG(naranjal,guayas).
provinciaG(naranjito,guayas).
provinciaG(palestina,guayas).
%PROVINCIA MORONA SANTIAGO
provinciaMS(macas,morona_santiago).
provinciaMS(sucua,morana_santiago).
provinciaMS(logrono,morona_santiago).
provinciaMS(limon,morona_santiago).
provinciaMS(tiwintza,morona_santiago).
provinciaMS(palora,morana_santiago).
provinciaMS(huamboya,morona_santiago).
provinciaMS(pablo_sexto,morona_santiago).
provinciaMS(taisha,morona_santiago).
provinciaMS(gualaquiza,morana_santiago).
provinciaMS(san_juan_bosco,morona_santiago).
provinciaMS(santiago_de_mendez,morona_santiago).
%PROVINCIA GALAPAGOS
provinciaGA(islas_galapagos,galapagos).
provinciaGA(puerto_ayora,galapagos).
provinciaGA(puerto_baquerizo_moreno,galapagos).
provinciaGA(puerto_villamil,galapagos).
%CLIMA DE LAS PROVINCIAS
clima(X,frio) :-provinciaA(X,azuay).
clima(X,caliente) :-provinciaG(X,guayas).
clima(X,calido) :-provinciaMS(X,morona_santiago).
clima(X,frio_seco) :-provinciaGA(X,galapagos).
%REGIONES CON CIUDAD
region(X,frio) :- clima(X,frio).
region(X,costa) :- clima(X,caliente).
region(X,oriental) :- clima(X,calido).
region(X,insular) :- clima(X,frio_seco).

