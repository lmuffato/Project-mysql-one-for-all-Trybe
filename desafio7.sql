CREATE VIEW perfil_artistas AS
SELECT
art.artista AS `artista`,
alb.album AS `album`,
COUNT(sa.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS alb
ON alb.artista_id = art.artista_id
INNER JOIN SpotifyClone.seguindo_artistas AS sa
ON sa.artista_id = art.artista_id
GROUP BY art.artista, alb.album
ORDER BY `seguidores` DESC, `artista`, `album`;
