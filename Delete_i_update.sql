--przyk³ady u¿ycia UPDATE i DELETE
UPDATE BIURO_PODROZY SET Nazwa_biura_podrozy = 'Wendkasz++++' WHERE Nazwa_biura_podrozy = 'Wendkasz+'
DELETE FROM BIURO_PODROZY WHERE Nazwa_biura_podrozy = 'Góromania'

DELETE FROM WYCIECZKA WHERE ID_wycieczki = '1'
DELETE FROM WYCIECZKA WHERE ID_wycieczki = '3' 

SELECT * FROM UCZESTNIK