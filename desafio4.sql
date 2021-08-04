CREATE VIEW top_3_artistas AS
SELECT art.artista_nome AS artista, COUNT(segArt.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.seguindo_artistas AS segArt
ON segArt.artista_id = art.artista_id
GROUP BY segArt.artista_id
ORDER BY `seguidores` DESC, `artista` ASC
LIMIT 3;
