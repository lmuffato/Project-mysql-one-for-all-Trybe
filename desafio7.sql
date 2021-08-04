CREATE VIEW perfil_artistas AS
SELECT art.artista AS artista, alb.album AS album, COUNT(f.artista_id) AS seguidores
FROM SpotifyClone.albums AS alb
INNER JOIN SpotifyClone.artistas AS art ON alb.artista_id = art.artista_id
INNER JOIN SpotifyClone.seguindo_artistas AS f ON f.artista_id = alb.artista_id
GROUP BY album, artista
ORDER BY seguidores DESC, artista, album
