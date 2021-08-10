CREATE VIEW top_3_artistas AS
SELECT t1.artista AS artista,
COUNT(t2.artista_id) AS seguidores
FROM artistas AS t1
INNER JOIN seguindo AS t2
ON 
t1.artista_id = t2.artista_id
GROUP BY artista
ORDER BY seguidores DESC
LIMIT 3;
