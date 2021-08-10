DROP VIEW IF EXISTS top_3_artistas;


CREATE VIEW top_3_artistas AS
SELECT a.artist AS artista, 
COUNT(*) AS seguidores
FROM following f 
INNER JOIN artist a ON f.artist_id = a.artist_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;

SELECT * FROM top_3_artistas;