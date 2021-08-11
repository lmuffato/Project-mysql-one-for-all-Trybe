CREATE VIEW top_3_artistas AS
SELECT
a.artista AS `artista`,
COUNT(s.usuario_ID) AS `seguidores`
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.seguindo AS s
ON a.artista_ID = s.artista_ID
GROUP BY `artista`
ORDER BY `seguidores` DESC
LIMIT 3; 
