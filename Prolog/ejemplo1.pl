% Numeros de listas
nlista(1,centro_democratico).
nlista(3,sociedad_patriotica).
nlista(4,ecuatoriano_unido).
nlista(6,partido_social_cristiano).
nlista(8,avanza).
nlista(9,libertad_es_pueblo).
nlista(10,fuerza_ec).
nlista(11,justicia_social).
nlista(12,izquierda_democrática).
nlista(16,movimiento_smigo).
nlista(18,pachakutik).
nlista(19,unió_ecuatoriana).
nlista(20,democracia_si).
nlista(21,creo).
nlista(23,suma).
nlista(25,sonstruye_ecuador).
nlista(33,juntos_podemos).
nlista(35,alianza_pais).
nlista(51,concertacion).
% NOMBRE DE LISTAS Y PRESIDENTES
lista(centro_democratico, andres_arauz).
lista(sociedad_patriotica, lucio_gutierrez).
lista(ecuatoriano_unido, gerson_almeida).
lista(partido_social_cristiano,cristina_reyes).
lista(avanza, isidro_romero).
lista(libertad_es_pueblo, esteban_quirola).
lista(fuerza_ec, miguel_salem_kronfle).
lista(justicia_social, fabricio_correa).
lista(izquierda_democrática,xavier_hervas).
lista(movimiento_amigo,pedro_josé_freile).
lista(pachakutik,yaku_perez).
lista(unión_ecuatoriana,washington_pesantez).
lista(democracia_si,gustavo_larrea).
lista(creo,guillermo_lasso).
lista(suma,guillermo_celi).
lista(construye_ecuador, juan_fernando_velasco).
lista(juntos_podemos, paul_carrasco).
lista(alianza_pais,ximena_peña).
lista(concertacion,cesar_montufar).

%NOMBRE VICEPRESIDENTE Y PRESIDENTE
listav(rafael_correa, andres_arauz).
listav(david_norero, lucio_gutierrez).
listav(martha_villafuerte, gerson_almeida).
listav(diego_salgado,cristina_reyes).
listav(sofía_merino, isidro_romero).
listav(juan_carlos_machuca, esteban_quirola).
listav(gustavo_bucaram_ortiz, miguel_salem_kronfle).
listav(marcia_yazbell, fabricio_correa).
listav(maria_sara_jijon,xavier_hervas).
listav(no,yaku_perez).
listav(byron-solis,pedro_josé_freile).
listav(jose_diaz,washington_pesantez).
listav(alexandra_peralta,gustavo_larrea).
listav(alfredo_borrero,guillermo_lasso).
listav(veronica_sevilla,guillermo_celi).
listav(ana_maría_pesantes, juan_fernando_velasco).
listav(frank_Vargas_anda, paul_carrasco).
listav(patricio_barriga,ximena_peña).
listav(julio_villacreses,cesar_montufar).
%ASAMBLEISTAS
asambleista(centro_democratico,pierina_correa_delgado).
asambleista(union_popular,geovanni_atarihuana).
asambleista(ecuatoriano_unido,rocio_juca).
asambleista(partido_social_cristiano,henry_kronfile).
asambleista(avanza,javier_orti).
asambleista(libertad_es_pueblo,fernando_balda).
asambleista(fuerza_ec,abdala_bucaram_ortiz).
asambleista(democracia_si,xavier_zavala_egas).
asambleista(creo,cesar_monge).
asambleista(alianza_pais,cesar_litardo).
asambleista(concertacion,fernando_villavicencio).
%reglas
candidato(A,B) :-
    nlista(A,C),lista(C,B);
    nlista(A,C),lista(C,E),listav(B,E);
    nlista(C,A),lista(A,B);
    nlista(C,A),lista(A,D),listav(B,D);
    nlista(A,C),asambleista(C,E).










