CREATE VIEW top_3_artistas AS
SELECT a.artista_nome AS artista, COUNT(sa.usuario_id) AS 'seguidores'
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.seguindoArtistas AS sa
ON sa.artista_id = a.artista_id
GROUP BY sa.artista_id
ORDER BY `seguidores` DESC, `artista` ASC
LIMIT 3;
