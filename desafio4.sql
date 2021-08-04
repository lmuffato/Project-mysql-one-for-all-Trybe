CREATE VIEW top_3_artistas AS
SELECT a.nome AS 'artista', COUNT(s.artista_id) AS 'seguidores'
FROM SpotifyClone.seguidores AS s
INNER JOIN SpotifyClone.artistas AS a
ON a.id = s.artista_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
