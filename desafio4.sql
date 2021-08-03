CREATE VIEW top_3_artistas AS
SELECT a.artista AS 'artista', COUNT(*) AS 'seguidores'
FROM seguindo_artistas AS s_a 
INNER JOIN artistas AS a
ON a.artista_id = s_a.artista_id
GROUP BY s_a.artista_id
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
