--CREATE DATABASE BAZA_PODROZE1;
--use BAZA_PODROZE1;

exec sp_MSforeachtable "declare @name nvarchar(max); set @name = parsename('?', 1); exec sp_MSdropconstraints @name";

exec sp_MSforeachtable "drop table ?";

CREATE TABLE ADRES(
	 ID_adresu int IDENTITY (1,1) PRIMARY KEY,
	 Ulica varchar(255) NOT NULL,
	 Numer_budynku int, CHECK (Numer_budynku > 0),
	 Miasto varchar(255) NOT NULL,
	 Kraj varchar(255) NOT NULL
);
--INSERT INTO ADRES VALUES('Lipowa', 1, 'Mielno', 'Polska');

CREATE TABLE OSOBA(
	ID_osoby varchar(11) PRIMARY KEY, UNIQUE(ID_osoby),
	ID_adresu int REFERENCES ADRES(ID_adresu) ON DELETE SET NULL,
	Imie varchar(255) NOT NULL,
	Nazwisko varchar(255) NOT NULL,
	Wiek int NOT NULL, CHECK (Wiek > 0 AND Wiek < 121)
);
--INSERT INTO OSOBA VALUES('123456789', IDENT_CURRENT('ADRES'), 'Alicja', 'Adekwatna', 10);

CREATE TABLE BIURO_PODROZY(
	Nazwa_biura_podrozy varchar(255) PRIMARY KEY, UNIQUE(Nazwa_biura_podrozy),
	ID_adresu int REFERENCES ADRES(ID_adresu) ON DELETE SET NULL
);
--INSERT INTO BIURO_PODROZY VALUES('S³oneczne Wakacje', IDENT_CURRENT('ADRES'));

CREATE TABLE PILOT_WYCIECZKI(
	ID_pilota_wycieczki int IDENTITY (1,1) PRIMARY KEY,
	ID_osoby varchar(11) REFERENCES OSOBA(ID_osoby) ON DELETE SET NULL,
	Specjalnosc varchar(60) NOT NULL,
	Kraj_oprowadzania varchar(60) NOT NULL
);
--INSERT INTO PILOT_WYCIECZKI VALUES('123456789', 'historia', 'Polska');

CREATE TABLE JEZYK(
	ID_jezyka varchar(5) PRIMARY KEY,
	Jezyk varchar(255), UNIQUE(Jezyk)
);
--INSERT INTO JEZYK (ID_jezyka, Jezyk) VALUES('pl', 'polski');

CREATE TABLE WYCIECZKA(
	ID_wycieczki int IDENTITY (1,1) PRIMARY KEY,
	ID_pilota_wycieczki int REFERENCES PILOT_WYCIECZKI(ID_pilota_wycieczki) ON DELETE CASCADE ON UPDATE CASCADE,
	ID_jezyka varchar(5) REFERENCES JEZYK(ID_jezyka) ON DELETE CASCADE ON UPDATE CASCADE,
	Typ_wycieczki varchar(30),
	Cena_za_os int, CHECK (Cena_za_os > 0),
	Czas_trwania_wycieczki int, CHECK (Czas_trwania_wycieczki > 0),
	Opinia int, CHECK (Opinia > 0 AND Opinia < 6)
);
--INSERT INTO WYCIECZKA VALUES (IDENT_CURRENT('PILOT_WYCIECZKI'), 'pl', 'all-inclusive', 1234, 5, 4);

CREATE TABLE UCZESTNIK(
	ID_uczestnika int IDENTITY (1,1) PRIMARY KEY,
	ID_osoby varchar(11) REFERENCES OSOBA(ID_osoby) ON DELETE NO ACTION,
	ID_wycieczki int REFERENCES WYCIECZKA(ID_wycieczki) ON DELETE CASCADE ON UPDATE CASCADE,
	Budzet int, CHECK (Budzet > 0),
	Preferowany_srodek_transportu varchar(30) DEFAULT 'autokar',
);
--INSERT INTO UCZESTNIK VALUES(123456789, 1, 4321, 'samolot');

CREATE TABLE MIEJSCE_WYCIECZKI(
	ID_miejsca_wycieczki int IDENTITY (1,1) PRIMARY KEY,
	ID_wycieczki int REFERENCES WYCIECZKA(ID_wycieczki) ON DELETE CASCADE ON UPDATE CASCADE,
	Kraj varchar(255) NOT NULL,
	Miasto varchar(255) NOT NULL
);
--INSERT INTO MIEJSCE_WYCIECZKI VALUES(1, 'Polska', 'Gniezno');

CREATE TABLE ATRAKCJE_DOD(
	ID_atrakcji_dod int IDENTITY (1,1) PRIMARY KEY,
	ID_wycieczki int REFERENCES WYCIECZKA(ID_wycieczki) ON DELETE CASCADE ON UPDATE CASCADE,
	Cena_za_os int, CHECK (Cena_za_os > 0),
	Poziom_ryzyka int, CHECK (Poziom_ryzyka > -1 AND Poziom_ryzyka < 11),
	Przeznaczenie varchar(255) DEFAULT 'ka¿dy',
	Rodzaj_atrakcj_dod varchar(255)
);
--INSERT INTO ATRAKCJE_DOD VALUES(1, 246, 2, 'dzieci', 'teatr');


CREATE TABLE PILOT_W_BIURO_P(
	ID_pilota_wycieczki int REFERENCES PILOT_WYCIECZKI(ID_pilota_wycieczki) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
	Nazwa_biura_podrozy varchar(255) REFERENCES BIURO_PODROZY(Nazwa_biura_podrozy) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
	PRIMARY KEY (ID_pilota_wycieczki, Nazwa_biura_podrozy)
);
--INSERT INTO PILOT_W_BIURO_P (ID_pilota_wycieczki, Nazwa_biura_podrozy) VALUES (IDENT_CURRENT('PILOT_WYCIECZKI'), 'PojedŸ z nami');


CREATE TABLE OSOBA_JEZYK(
	ID_osoby varchar(11) REFERENCES OSOBA(ID_osoby) ON DELETE NO ACTION NOT NULL,
	ID_jezyka varchar(5) REFERENCES JEZYK(ID_jezyka) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
	PRIMARY KEY (ID_osoby, ID_jezyka)
);
--INSERT INTO OSOBA_JEZYK (ID_osoby, ID_jezyka) VALUES ('PLL456789', 'pl');