
-- 1. Selezionare tutti i dati da una tabella
SELECT * FROM nome_tabella;

-- 2. Selezionare dati con condizioni (WHERE)
SELECT * FROM nome_tabella WHERE colonna = valore;

-- 3. Ordinare i risultati (ORDER BY)
SELECT * FROM nome_tabella ORDER BY colonna ASC;  -- Ascendente
SELECT * FROM nome_tabella ORDER BY colonna DESC; -- Discendente

-- 4. Selezionare colonne specifiche
SELECT colonna1, colonna2 FROM nome_tabella;

-- 5. Contare righe
SELECT COUNT(*) FROM nome_tabella;

-- 6. Gruppare i dati (GROUP BY)
SELECT colonna, COUNT(*) FROM nome_tabella GROUP BY colonna;

-- 7. Somma dei valori di una colonna
SELECT SUM(colonna) FROM nome_tabella;

-- 8. Media dei valori di una colonna
SELECT AVG(colonna) FROM nome_tabella;

-- 9. Inserire dati in una tabella
INSERT INTO nome_tabella (colonna1, colonna2) VALUES (valore1, valore2);

-- 10. Aggiornare i dati
UPDATE nome_tabella SET colonna1 = valore1 WHERE colonna2 = valore2;

-- 11. Eliminare dati
DELETE FROM nome_tabella WHERE colonna = valore;

-- 12. Creare una nuova tabella
CREATE TABLE nome_tabella (
    colonna1 tipo_dato,
    colonna2 tipo_dato
);

-- 13. Modificare una tabella (aggiungere colonna)
ALTER TABLE nome_tabella ADD colonna tipo_dato;

-- 14. Eliminare una colonna
ALTER TABLE nome_tabella DROP COLUMN colonna;

-- 15. Creare un indice
CREATE INDEX nome_indice ON nome_tabella (colonna);

-- 16. Join tra due tabelle
SELECT * FROM tabella1 
JOIN tabella2 ON tabella1.colonna = tabella2.colonna;

-- 17. Left Join
SELECT * FROM tabella1 
LEFT JOIN tabella2 ON tabella1.colonna = tabella2.colonna;

-- 18. Right Join
SELECT * FROM tabella1 
RIGHT JOIN tabella2 ON tabella1.colonna = tabella2.colonna;

-- 19. Subquery
SELECT * FROM tabella1 
WHERE colonna IN (SELECT colonna FROM tabella2 WHERE condizione);

-- 20. Ricerca con LIKE
SELECT * FROM nome_tabella WHERE colonna LIKE 'valore%';

-- 21. Verifica se un valore esiste
SELECT EXISTS(SELECT 1 FROM nome_tabella WHERE colonna = valore);

-- 22. Limite sul numero di risultati (LIMIT)
SELECT * FROM nome_tabella LIMIT 10;

-- 23. Esempio di creazione di una vista
CREATE VIEW nome_vista AS 
SELECT colonna1, colonna2 FROM nome_tabella WHERE condizione;
