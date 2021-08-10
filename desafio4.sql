CREATE VIEW top_3_artistas AS
SELECT
art.artista AS `artista`,
COUNT(*) AS `seguidores`
FROM SpotifyClone.artista art
INNER JOIN SpotifyClone.seguindo s
ON art.artista_id = s.artista_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;

SELECT * FROM top_3_artistas;
