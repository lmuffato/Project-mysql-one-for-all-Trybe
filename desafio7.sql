CREATE VIEW perfil_artistas AS
SELECT art.artista, alb.album, COUNT(alb.artista_id) seguidores
FROM SpotifyClone.album AS alb
JOIN SpotifyClone.artista AS art
ON alb.artista_id = art.artista_id
JOIN SpotifyClone.seguindo_artista AS sa
ON alb.artista_id = sa.artista_id
GROUP BY alb.artista_id, album
ORDER BY `seguidores` DESC, `artista`, `album`;
