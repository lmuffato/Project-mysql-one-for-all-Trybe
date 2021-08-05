CREATE VIEW perfil_artistas AS
SELECT art.artista_nome AS artista, alb.album_nome AS album, COUNT(seg.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS alb
ON art.artista_id = alb.artista_id
INNER JOIN SpotifyClone.seguindo_artistas AS seg
ON art.artista_id = seg.artista_id
GROUP BY alb.album_id
ORDER BY `seguidores` DESC, `artista` ASC;
