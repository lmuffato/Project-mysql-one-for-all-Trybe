CREATE VIEW top_3_artistas AS
SELECT a.artist AS `artista`, 
COUNT (*) AS `seguidores`
FROM SpotifyClone.following AS f
INNER JOIN SpotifyClone.artist AS a ON f.artist_id = a.artist_id
ORDER BY seguidores DESC, artista
LIMIT 3;
