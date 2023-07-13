INSERT INTO JEZYK (ID_jezyka, Jezyk) VALUES('pl', 'polski');
INSERT INTO JEZYK (ID_jezyka, Jezyk) VALUES('en', 'angielski');
INSERT INTO JEZYK (ID_jezyka, Jezyk) VALUES('de', 'niemiecki');
INSERT INTO JEZYK (ID_jezyka, Jezyk) VALUES('fr', 'francuski');
INSERT INTO JEZYK (ID_jezyka, Jezyk) VALUES('pt', 'portugalski');
INSERT INTO JEZYK (ID_jezyka, Jezyk) VALUES('ru', 'rosyjski');
INSERT INTO JEZYK (ID_jezyka, Jezyk) VALUES('es', 'hiszpañski');
INSERT INTO JEZYK (ID_jezyka, Jezyk) VALUES('be', 'bia³oruski');
INSERT INTO JEZYK (ID_jezyka, Jezyk) VALUES('it', 'w³oski');
INSERT INTO JEZYK (ID_jezyka, Jezyk) VALUES('uk', 'ukraiñski');
INSERT INTO JEZYK (ID_jezyka, Jezyk) VALUES('tr', 'turecki');


INSERT INTO ADRES (Ulica, Numer_budynku, Miasto, Kraj) VALUES ('Klonowa', 2, 'Kraków', 'Polska');
	INSERT INTO BIURO_PODROZY (Nazwa_biura_podrozy, ID_adresu) VALUES ('PojedŸ z nami', IDENT_CURRENT('ADRES'));


INSERT INTO ADRES (Ulica, Numer_budynku, Miasto, Kraj) VALUES ('Naturalna', 4, 'Wroc³aw', 'Polska');
	INSERT INTO BIURO_PODROZY (Nazwa_biura_podrozy, ID_adresu) VALUES ('Wymarzone wczasy', IDENT_CURRENT('ADRES'));


INSERT INTO ADRES (Ulica, Numer_budynku, Miasto, Kraj) VALUES ('Krótka', 1, 'Zakopane', 'Polska');
	INSERT INTO BIURO_PODROZY (Nazwa_biura_podrozy, ID_adresu) VALUES ('Coœ ciekawego zobaczysz', IDENT_CURRENT('ADRES'));


INSERT INTO ADRES (Ulica, Numer_budynku, Miasto, Kraj) VALUES ('D³uga', 3, 'Zakopane', 'Polska');
	INSERT INTO BIURO_PODROZY (Nazwa_biura_podrozy, ID_adresu) VALUES ('Parasolka i rêczniczek', IDENT_CURRENT('ADRES'));


INSERT INTO ADRES (Ulica, Numer_budynku, Miasto, Kraj) VALUES ('Krêta', 6, 'Radom', 'Polska');
	INSERT INTO BIURO_PODROZY (Nazwa_biura_podrozy, ID_adresu) VALUES ('Góromania', IDENT_CURRENT('ADRES'));


INSERT INTO ADRES (Ulica, Numer_budynku, Miasto, Kraj) VALUES ('Krêta', 5, 'Radom', 'Polska');
	INSERT INTO BIURO_PODROZY (Nazwa_biura_podrozy, ID_adresu) VALUES ('Morzomania', IDENT_CURRENT('ADRES'));
	INSERT INTO BIURO_PODROZY (Nazwa_biura_podrozy, ID_adresu) VALUES ('Mazuromania', IDENT_CURRENT('ADRES'));
	INSERT INTO BIURO_PODROZY (Nazwa_biura_podrozy, ID_adresu) VALUES ('Wodomania', IDENT_CURRENT('ADRES'));
	INSERT INTO BIURO_PODROZY (Nazwa_biura_podrozy, ID_adresu) VALUES ('Wendkasz+', IDENT_CURRENT('ADRES'));

INSERT INTO ADRES (Ulica, Numer_budynku, Miasto, Kraj) VALUES ('W¹ska', 8, 'Radom', 'Polska');
	INSERT INTO BIURO_PODROZY (Nazwa_biura_podrozy, ID_adresu) VALUES ('ZwiedŸ to sam', IDENT_CURRENT('ADRES'));

-- osoba i biuro
INSERT INTO ADRES (Ulica, Numer_budynku, Miasto, Kraj) VALUES ('Lipowa', 7, 'Mielno', 'Polska');
	INSERT INTO OSOBA (ID_osoby, ID_adresu, Imie, Nazwisko, Wiek) VALUES ('12345678900', IDENT_CURRENT('ADRES'), 'Alicja', 'Adekwatna', 10);
		INSERT INTO PILOT_WYCIECZKI (ID_osoby, Specjalnosc, Kraj_oprowadzania) VALUES ('12345678900', 'historia', 'Polska');
			INSERT INTO WYCIECZKA (ID_pilota_wycieczki, ID_jezyka, Typ_wycieczki, Cena_za_os, Czas_trwania_wycieczki, Opinia) VALUES (IDENT_CURRENT('PILOT_WYCIECZKI'), 'pl', 'all-inclusive', 111, 1, 5);
				INSERT INTO MIEJSCE_WYCIECZKI (ID_wycieczki, Kraj, Miasto) VALUES(IDENT_CURRENT('WYCIECZKA'), 'Polska', 'Gniezno');
				INSERT INTO ATRAKCJE_DOD (ID_wycieczki, Cena_za_os, Poziom_ryzyka, Przeznaczenie, Rodzaj_atrakcj_dod) VALUES(IDENT_CURRENT('WYCIECZKA'), 246, 2, 'dzieci', 'muzeum');
	INSERT INTO OSOBA (ID_osoby, ID_adresu, Imie, Nazwisko, Wiek) VALUES ('23456789100', IDENT_CURRENT('ADRES'), 'Bogna', 'Bogata', 15);
		INSERT INTO UCZESTNIK (ID_osoby, ID_wycieczki, Budzet, Preferowany_srodek_transportu) VALUES( '23456789100', IDENT_CURRENT('WYCIECZKA'), 4321, 'samolot');
	INSERT INTO OSOBA (ID_osoby, ID_adresu, Imie, Nazwisko, Wiek) VALUES ('PL567891200', IDENT_CURRENT('ADRES'), 'Natalia', 'Nosowska', 20);
		INSERT INTO UCZESTNIK (ID_osoby, ID_wycieczki, Budzet, Preferowany_srodek_transportu) VALUES( 'PL567891200', IDENT_CURRENT('WYCIECZKA'), 3211, 'autokar');
	INSERT INTO OSOBA (ID_osoby, ID_adresu, Imie, Nazwisko, Wiek) VALUES ('PL678912300', IDENT_CURRENT('ADRES'), 'Ola', 'Okr¹g³a', 30);
		INSERT INTO UCZESTNIK (ID_osoby, ID_wycieczki, Budzet, Preferowany_srodek_transportu) VALUES( 'PL678912300', IDENT_CURRENT('WYCIECZKA'), 2110, 'autokar');
	INSERT INTO BIURO_PODROZY (Nazwa_biura_podrozy, ID_adresu) VALUES ('S³oneczne Wakacje', IDENT_CURRENT('ADRES'));
INSERT INTO PILOT_W_BIURO_P (ID_pilota_wycieczki, Nazwa_biura_podrozy) VALUES (IDENT_CURRENT('PILOT_WYCIECZKI'), 'S³oneczne Wakacje');


-- pilot i biuro
INSERT INTO ADRES (Ulica, Numer_budynku, Miasto, Kraj) VALUES ('£adna', 9, 'Gdañsk', 'Polska');
	INSERT INTO OSOBA (ID_osoby, ID_adresu, Imie, Nazwisko, Wiek) VALUES ('34567891200', IDENT_CURRENT('ADRES'), 'Celina', 'Cudna', 20);
		INSERT INTO PILOT_WYCIECZKI (ID_osoby, Specjalnosc, Kraj_oprowadzania) VALUES ('34567891200', 'historia', 'Polska');
			INSERT INTO WYCIECZKA (ID_pilota_wycieczki, ID_jezyka, Typ_wycieczki, Cena_za_os, Czas_trwania_wycieczki, Opinia) VALUES (IDENT_CURRENT('PILOT_WYCIECZKI'), 'ru', 'rekreacyjna', 555, 3, 2);
				INSERT INTO MIEJSCE_WYCIECZKI (ID_wycieczki, Kraj, Miasto) VALUES(IDENT_CURRENT('WYCIECZKA'), 'Rosja', 'Moskwa');
				INSERT INTO ATRAKCJE_DOD (ID_wycieczki, Cena_za_os, Poziom_ryzyka, Przeznaczenie, Rodzaj_atrakcj_dod) VALUES(IDENT_CURRENT('WYCIECZKA'), 300, 1, 'dzieci', 'kino');
			INSERT INTO WYCIECZKA (ID_pilota_wycieczki, ID_jezyka, Typ_wycieczki, Cena_za_os, Czas_trwania_wycieczki, Opinia) VALUES (IDENT_CURRENT('PILOT_WYCIECZKI'), 'en', 'all-inclusive', 222, 2, 4);
				INSERT INTO MIEJSCE_WYCIECZKI (ID_wycieczki, Kraj, Miasto) VALUES(IDENT_CURRENT('WYCIECZKA'), 'Wielka Brytania', 'Londyn');
				INSERT INTO ATRAKCJE_DOD (ID_wycieczki, Cena_za_os, Poziom_ryzyka, Przeznaczenie, Rodzaj_atrakcj_dod) VALUES(IDENT_CURRENT('WYCIECZKA'), 20, 1, 'wszyscy', 'park');
	INSERT INTO OSOBA (ID_osoby, ID_adresu, Imie, Nazwisko, Wiek) VALUES ('PL456789100', IDENT_CURRENT('ADRES'), 'Maria', 'Ma³ostkowa', 35);
		INSERT INTO UCZESTNIK (ID_osoby, ID_wycieczki, Budzet, Preferowany_srodek_transportu) VALUES( 'PL456789100', IDENT_CURRENT('WYCIECZKA'), 2000, 'samolot');
	INSERT INTO OSOBA (ID_osoby, ID_adresu, Imie, Nazwisko, Wiek) VALUES ('PL789123400', IDENT_CURRENT('ADRES'), 'Patrycja', 'Piêkna', 50);
		INSERT INTO UCZESTNIK (ID_osoby, ID_wycieczki, Budzet, Preferowany_srodek_transportu) VALUES( 'PL789123400', IDENT_CURRENT('WYCIECZKA'), 2000, 'autokar');
	INSERT INTO BIURO_PODROZY (Nazwa_biura_podrozy, ID_adresu) VALUES ('Zwiedzaj œwiat', IDENT_CURRENT('ADRES'));
INSERT INTO PILOT_W_BIURO_P (ID_pilota_wycieczki, Nazwa_biura_podrozy) VALUES (IDENT_CURRENT('PILOT_WYCIECZKI'), 'Zwiedzaj œwiat');


--1 pilot
INSERT INTO ADRES (Ulica, Numer_budynku, Miasto, Kraj) VALUES ('£adna', 10, 'Gdynia', 'Polska');
	INSERT INTO OSOBA (ID_osoby, ID_adresu, Imie, Nazwisko, Wiek) VALUES ('45678912300', IDENT_CURRENT('ADRES'), 'Danuta', 'D¹browska', 25);
		INSERT INTO PILOT_WYCIECZKI (ID_osoby, Specjalnosc, Kraj_oprowadzania) VALUES ('45678912300', 'sztuka', 'Polska');
			INSERT INTO WYCIECZKA (ID_pilota_wycieczki, ID_jezyka, Typ_wycieczki, Cena_za_os, Czas_trwania_wycieczki, Opinia) VALUES (IDENT_CURRENT('PILOT_WYCIECZKI'), 'en', 'rekreacyjna', 333, 3, 4);
				INSERT INTO MIEJSCE_WYCIECZKI (ID_wycieczki, Kraj, Miasto) VALUES(IDENT_CURRENT('WYCIECZKA'), 'Wielka Brytania', 'Norwich');
				INSERT INTO ATRAKCJE_DOD (ID_wycieczki, Cena_za_os, Poziom_ryzyka, Przeznaczenie, Rodzaj_atrakcj_dod) VALUES(IDENT_CURRENT('WYCIECZKA'), 400, 2, 'wszyscy', 'teatr');
			INSERT INTO WYCIECZKA (ID_pilota_wycieczki, ID_jezyka, Typ_wycieczki, Cena_za_os, Czas_trwania_wycieczki, Opinia) VALUES (IDENT_CURRENT('PILOT_WYCIECZKI'), 'fr', 'all-inclusive', 666, 6, 5);
				INSERT INTO MIEJSCE_WYCIECZKI (ID_wycieczki, Kraj, Miasto) VALUES(IDENT_CURRENT('WYCIECZKA'), 'Francja', 'Pary¿');
				INSERT INTO ATRAKCJE_DOD (ID_wycieczki, Cena_za_os, Poziom_ryzyka, Przeznaczenie, Rodzaj_atrakcj_dod) VALUES(IDENT_CURRENT('WYCIECZKA'), 150, 3, 'wszyscy', 'basen');
	INSERT INTO OSOBA (ID_osoby, ID_adresu, Imie, Nazwisko, Wiek) VALUES ('PL891234500', IDENT_CURRENT('ADRES'), 'Roksana', 'Radosna', 40);
		INSERT INTO UCZESTNIK (ID_osoby, ID_wycieczki, Budzet, Preferowany_srodek_transportu) VALUES( 'PL891234500', IDENT_CURRENT('WYCIECZKA'), 2000, 'poci¹g');
	INSERT INTO OSOBA (ID_osoby, ID_adresu, Imie, Nazwisko, Wiek) VALUES ('PL912345600', IDENT_CURRENT('ADRES'), 'Sandra', 'S³odka', 50);
		INSERT INTO UCZESTNIK (ID_osoby, ID_wycieczki, Budzet, Preferowany_srodek_transportu) VALUES( 'PL912345600', IDENT_CURRENT('WYCIECZKA'), 2000, 'poci¹g');
INSERT INTO PILOT_W_BIURO_P (ID_pilota_wycieczki, Nazwa_biura_podrozy) VALUES (IDENT_CURRENT('PILOT_WYCIECZKI'), 'Mazuromania');


--2 pilot
INSERT INTO ADRES (Ulica, Numer_budynku, Miasto, Kraj) VALUES ('Miodowa', 11, 'Sopot', 'Polska');
	INSERT INTO OSOBA (ID_osoby, ID_adresu, Imie, Nazwisko, Wiek) VALUES ('56789123400', IDENT_CURRENT('ADRES'), 'Ewelina', 'Elegancka', 30);
		INSERT INTO PILOT_WYCIECZKI (ID_osoby, Specjalnosc, Kraj_oprowadzania) VALUES ('56789123400', 'sztuka', 'Polska');
			INSERT INTO WYCIECZKA (ID_pilota_wycieczki, ID_jezyka, Typ_wycieczki, Cena_za_os, Czas_trwania_wycieczki, Opinia) VALUES (IDENT_CURRENT('PILOT_WYCIECZKI'), 'es', 'aktywna', 111, 1, 5);
				INSERT INTO MIEJSCE_WYCIECZKI (ID_wycieczki, Kraj, Miasto) VALUES(IDENT_CURRENT('WYCIECZKA'), 'Hiszpania', 'Madryt');
				INSERT INTO ATRAKCJE_DOD (ID_wycieczki, Cena_za_os, Poziom_ryzyka, Przeznaczenie, Rodzaj_atrakcj_dod) VALUES(IDENT_CURRENT('WYCIECZKA'), 100, 5, 'doroœli', 'dyskoteka');
			INSERT INTO WYCIECZKA (ID_pilota_wycieczki, ID_jezyka, Typ_wycieczki, Cena_za_os, Czas_trwania_wycieczki, Opinia) VALUES (IDENT_CURRENT('PILOT_WYCIECZKI'), 'es', 'rekreacyjna', 222, 3, 3);
				INSERT INTO MIEJSCE_WYCIECZKI (ID_wycieczki, Kraj, Miasto) VALUES(IDENT_CURRENT('WYCIECZKA'), 'Hiszpania', 'Alicante');
				INSERT INTO ATRAKCJE_DOD (ID_wycieczki, Cena_za_os, Poziom_ryzyka, Przeznaczenie, Rodzaj_atrakcj_dod) VALUES(IDENT_CURRENT('WYCIECZKA'), 300, 2, 'wszyscy', 'teatr');
				INSERT INTO ATRAKCJE_DOD (ID_wycieczki, Cena_za_os, Poziom_ryzyka, Przeznaczenie, Rodzaj_atrakcj_dod) VALUES(IDENT_CURRENT('WYCIECZKA'), 150, 4, 'doroœli', 'kino');
			INSERT INTO WYCIECZKA (ID_pilota_wycieczki, ID_jezyka, Typ_wycieczki, Cena_za_os, Czas_trwania_wycieczki, Opinia) VALUES (IDENT_CURRENT('PILOT_WYCIECZKI'), 'pt', 'rekreacyjna', 555, 4, 2);
				INSERT INTO MIEJSCE_WYCIECZKI (ID_wycieczki, Kraj, Miasto) VALUES(IDENT_CURRENT('WYCIECZKA'), 'Portugalia', 'Lisbona');
	INSERT INTO OSOBA (ID_osoby, ID_adresu, Imie, Nazwisko, Wiek) VALUES ('PLL12345600', IDENT_CURRENT('ADRES'), 'Tatiana', 'Taka', 40);
		INSERT INTO UCZESTNIK (ID_osoby, ID_wycieczki, Budzet, Preferowany_srodek_transportu) VALUES( 'PLL12345600', IDENT_CURRENT('WYCIECZKA'), 1000, 'poci¹g');
	INSERT INTO OSOBA (ID_osoby, ID_adresu, Imie, Nazwisko, Wiek) VALUES ('PLL23456700', IDENT_CURRENT('ADRES'), 'Ula', 'Umalowana', 42);
		INSERT INTO UCZESTNIK (ID_osoby, ID_wycieczki, Budzet, Preferowany_srodek_transportu) VALUES( 'PLL23456700', IDENT_CURRENT('WYCIECZKA'), 1000, 'poci¹g');
INSERT INTO PILOT_W_BIURO_P (ID_pilota_wycieczki, Nazwa_biura_podrozy) VALUES (IDENT_CURRENT('PILOT_WYCIECZKI'), 'Morzomania');


--3 pilot
INSERT INTO ADRES (Ulica, Numer_budynku, Miasto, Kraj) VALUES ('Szafirowa', 12, 'Katowice', 'Polska');
	INSERT INTO OSOBA (ID_osoby, ID_adresu, Imie, Nazwisko, Wiek) VALUES ('67891234500', IDENT_CURRENT('ADRES'), 'Felicja', 'Fajna', 35);
		INSERT INTO PILOT_WYCIECZKI (ID_osoby, Specjalnosc, Kraj_oprowadzania) VALUES ('67891234500', 'przyroda', 'Polska');
			INSERT INTO BIURO_PODROZY (Nazwa_biura_podrozy, ID_adresu) VALUES ('Urlopowicz+', IDENT_CURRENT('ADRES'));
INSERT INTO PILOT_W_BIURO_P (ID_pilota_wycieczki, Nazwa_biura_podrozy) VALUES (IDENT_CURRENT('PILOT_WYCIECZKI'), 'Urlopowicz+');


--4 pilot
INSERT INTO ADRES (Ulica, Numer_budynku, Miasto, Kraj) VALUES ('Rdestowa', 13, 'Wroc³aw', 'Polska');
	INSERT INTO OSOBA (ID_osoby, ID_adresu, Imie, Nazwisko, Wiek) VALUES ('78912345600', IDENT_CURRENT('ADRES'), 'Gabrysia', 'G³adka', 40);
		INSERT INTO PILOT_WYCIECZKI (ID_osoby, Specjalnosc, Kraj_oprowadzania) VALUES ('78912345600', 'przyroda', 'Polska');
			INSERT INTO WYCIECZKA (ID_pilota_wycieczki, ID_jezyka, Typ_wycieczki, Cena_za_os, Czas_trwania_wycieczki, Opinia) VALUES (IDENT_CURRENT('PILOT_WYCIECZKI'), 'de', 'rekreacyjna', 222, 2, 5);
				INSERT INTO MIEJSCE_WYCIECZKI (ID_wycieczki, Kraj, Miasto) VALUES(IDENT_CURRENT('WYCIECZKA'), 'Niemcy', 'Berlin');
				INSERT INTO ATRAKCJE_DOD (ID_wycieczki, Cena_za_os, Poziom_ryzyka, Przeznaczenie, Rodzaj_atrakcj_dod) VALUES(IDENT_CURRENT('WYCIECZKA'), 450, 4, 'wszyscy', 'basen');
			INSERT INTO WYCIECZKA (ID_pilota_wycieczki, ID_jezyka, Typ_wycieczki, Cena_za_os, Czas_trwania_wycieczki, Opinia) VALUES (IDENT_CURRENT('PILOT_WYCIECZKI'), 'de', 'aktywna', 444, 4, 5);
				INSERT INTO MIEJSCE_WYCIECZKI (ID_wycieczki, Kraj, Miasto) VALUES(IDENT_CURRENT('WYCIECZKA'), 'Niemcy', 'Poczdam');
				INSERT INTO ATRAKCJE_DOD (ID_wycieczki, Cena_za_os, Poziom_ryzyka, Przeznaczenie, Rodzaj_atrakcj_dod) VALUES(IDENT_CURRENT('WYCIECZKA'), 300, 5, 'wszyscy', 'park rozrywki');
			INSERT INTO WYCIECZKA (ID_pilota_wycieczki, ID_jezyka, Typ_wycieczki, Cena_za_os, Czas_trwania_wycieczki, Opinia) VALUES (IDENT_CURRENT('PILOT_WYCIECZKI'), 'de', 'aktywna', 111, 1, 5);
				INSERT INTO MIEJSCE_WYCIECZKI (ID_wycieczki, Kraj, Miasto) VALUES(IDENT_CURRENT('WYCIECZKA'), 'Niemcy', 'Norymberga');
				INSERT INTO ATRAKCJE_DOD (ID_wycieczki, Cena_za_os, Poziom_ryzyka, Przeznaczenie, Rodzaj_atrakcj_dod) VALUES(IDENT_CURRENT('WYCIECZKA'), 100, 5, 'wszyscy', 'pokaz ognia');
	INSERT INTO OSOBA (ID_osoby, ID_adresu, Imie, Nazwisko, Wiek) VALUES ('PLL34567800', IDENT_CURRENT('ADRES'), 'Wiola', 'Wilk', 43);
		INSERT INTO UCZESTNIK (ID_osoby, ID_wycieczki, Budzet, Preferowany_srodek_transportu) VALUES( 'PLL34567800', IDENT_CURRENT('WYCIECZKA'), 1000, 'poci¹g');
	INSERT INTO OSOBA (ID_osoby, ID_adresu, Imie, Nazwisko, Wiek) VALUES ('PLL45678900', IDENT_CURRENT('ADRES'), 'Xenia', 'Xerox', 44);
		INSERT INTO UCZESTNIK (ID_osoby, ID_wycieczki, Budzet, Preferowany_srodek_transportu) VALUES( 'PLL45678900', IDENT_CURRENT('WYCIECZKA'), 900, 'poci¹g');
INSERT INTO PILOT_W_BIURO_P (ID_pilota_wycieczki, Nazwa_biura_podrozy) VALUES (IDENT_CURRENT('PILOT_WYCIECZKI'), 'Urlopowicz+');


--5 pilot
INSERT INTO ADRES (Ulica, Numer_budynku, Miasto, Kraj) VALUES ('Klonowa', 14, 'Kraków', 'Polska');
	INSERT INTO OSOBA (ID_osoby, ID_adresu, Imie, Nazwisko, Wiek) VALUES ('PL345678900', IDENT_CURRENT('ADRES'), 'Lucyna', 'Lawiruj¹ca', 70);
		INSERT INTO PILOT_WYCIECZKI (ID_osoby, Specjalnosc, Kraj_oprowadzania) VALUES ('PL345678900', 'przyroda', 'Polska');
INSERT INTO PILOT_W_BIURO_P (ID_pilota_wycieczki, Nazwa_biura_podrozy) VALUES (IDENT_CURRENT('PILOT_WYCIECZKI'), 'Coœ ciekawego zobaczysz');


--6 pilot
INSERT INTO ADRES (Ulica, Numer_budynku, Miasto, Kraj) VALUES ('Klonowa', 15, 'Kraków', 'Polska');
	INSERT INTO OSOBA (ID_osoby, ID_adresu, Imie, Nazwisko, Wiek) VALUES ('PL234567800', IDENT_CURRENT('ADRES'), 'Klenentyna', 'Kochanowska', 60);
		INSERT INTO PILOT_WYCIECZKI (ID_osoby, Specjalnosc, Kraj_oprowadzania) VALUES ('PL234567800', 'historia', 'Polska');
INSERT INTO PILOT_W_BIURO_P (ID_pilota_wycieczki, Nazwa_biura_podrozy) VALUES (IDENT_CURRENT('PILOT_WYCIECZKI'), 'Góromania');


--7 pilot
INSERT INTO ADRES (Ulica, Numer_budynku, Miasto, Kraj) VALUES ('Klonowa', 16, 'Kraków', 'Polska');
	INSERT INTO OSOBA (ID_osoby, ID_adresu, Imie, Nazwisko, Wiek) VALUES ('PL123456700', IDENT_CURRENT('ADRES'), 'Joanna', 'Jod³owa', 55);
		INSERT INTO PILOT_WYCIECZKI (ID_osoby, Specjalnosc, Kraj_oprowadzania) VALUES ('PL123456700', 'historia', 'Polska');
INSERT INTO PILOT_W_BIURO_P (ID_pilota_wycieczki, Nazwa_biura_podrozy) VALUES (IDENT_CURRENT('PILOT_WYCIECZKI'), 'Parasolka i rêczniczek');


--8 pilot
INSERT INTO ADRES (Ulica, Numer_budynku, Miasto, Kraj) VALUES ('Miodowa', 1, 'Zielona Góra', 'Polska');
	INSERT INTO OSOBA (ID_osoby, ID_adresu, Imie, Nazwisko, Wiek) VALUES ('91234567800', IDENT_CURRENT('ADRES'), 'Ilona', 'Igielska', 50);
		INSERT INTO PILOT_WYCIECZKI (ID_osoby, Specjalnosc, Kraj_oprowadzania) VALUES ('91234567800', 'historia', 'Polska');
INSERT INTO PILOT_W_BIURO_P (ID_pilota_wycieczki, Nazwa_biura_podrozy) VALUES (IDENT_CURRENT('PILOT_WYCIECZKI'), 'PojedŸ z nami');


--9 pilot
INSERT INTO ADRES (Ulica, Numer_budynku, Miasto, Kraj) VALUES ('Miodowa', 2, 'Zielona Góra', 'Polska');	
	INSERT INTO OSOBA (ID_osoby, ID_adresu, Imie, Nazwisko, Wiek) VALUES ('89123456700', IDENT_CURRENT('ADRES'), 'Hera', 'Humorzasta', 45);
		INSERT INTO PILOT_WYCIECZKI (ID_osoby, Specjalnosc, Kraj_oprowadzania) VALUES ('89123456700', 'sztuka', 'Polska');
INSERT INTO PILOT_W_BIURO_P (ID_pilota_wycieczki, Nazwa_biura_podrozy) VALUES (IDENT_CURRENT('PILOT_WYCIECZKI'), 'Wendkasz+');



INSERT INTO OSOBA_JEZYK (ID_osoby, ID_jezyka) VALUES ('12345678900', 'pl');
INSERT INTO OSOBA_JEZYK (ID_osoby, ID_jezyka) VALUES ('23456789100', 'pl');
INSERT INTO OSOBA_JEZYK (ID_osoby, ID_jezyka) VALUES ('34567891200', 'pl');
INSERT INTO OSOBA_JEZYK (ID_osoby, ID_jezyka) VALUES ('45678912300', 'pl');
INSERT INTO OSOBA_JEZYK (ID_osoby, ID_jezyka) VALUES ('56789123400', 'pl');
INSERT INTO OSOBA_JEZYK (ID_osoby, ID_jezyka) VALUES ('67891234500', 'en');
INSERT INTO OSOBA_JEZYK (ID_osoby, ID_jezyka) VALUES ('78912345600', 'en');
INSERT INTO OSOBA_JEZYK (ID_osoby, ID_jezyka) VALUES ('91234567800', 'en');
INSERT INTO OSOBA_JEZYK (ID_osoby, ID_jezyka) VALUES ('PL123456700', 'en');
INSERT INTO OSOBA_JEZYK (ID_osoby, ID_jezyka) VALUES ('PL234567800', 'en');
INSERT INTO OSOBA_JEZYK (ID_osoby, ID_jezyka) VALUES ('PL345678900', 'de');
INSERT INTO OSOBA_JEZYK (ID_osoby, ID_jezyka) VALUES ('PL456789100', 'de');
INSERT INTO OSOBA_JEZYK (ID_osoby, ID_jezyka) VALUES ('PL567891200', 'de');
INSERT INTO OSOBA_JEZYK (ID_osoby, ID_jezyka) VALUES ('PL678912300', 'pl');
INSERT INTO OSOBA_JEZYK (ID_osoby, ID_jezyka) VALUES ('PL789123400', 'pl');
INSERT INTO OSOBA_JEZYK (ID_osoby, ID_jezyka) VALUES ('PL891234500', 'pl');
INSERT INTO OSOBA_JEZYK (ID_osoby, ID_jezyka) VALUES ('PL912345600', 'pl');
INSERT INTO OSOBA_JEZYK (ID_osoby, ID_jezyka) VALUES ('PLL12345600', 'pl');
INSERT INTO OSOBA_JEZYK (ID_osoby, ID_jezyka) VALUES ('PLL23456700', 'pl');
INSERT INTO OSOBA_JEZYK (ID_osoby, ID_jezyka) VALUES ('PLL34567800', 'pl');
INSERT INTO OSOBA_JEZYK (ID_osoby, ID_jezyka) VALUES ('PLL45678900', 'pl');