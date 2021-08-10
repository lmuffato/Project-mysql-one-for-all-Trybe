CREATE VIEW perfil_artistas AS
SELECT t1.artista AS artista,
t3.album AS album,
COUNT(t4.usuario) AS seguidores FROM SpotifyClone.artistas AS t1
INNER JOIN SpotifyClone.seguindoArtistas AS t2
INNER JOIN SpotifyClone.albuns AS t3
INNER JOIN SpotifyClone.usuarios AS t4
ON t1.artista_id = t2.artista_id AND t4.usuario_id = t2.usuario_id
AND t1.artista_id = t3.artista_id
GROUP BY artista,album
ORDER BY seguidores DESC, artista, album;
