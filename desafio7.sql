CREATE VIEW perfil_artistas AS (
SELECT ar.artista AS artista, album AS album, COUNT(sa.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al
ON al.artista_id = ar.artista_id
INNER JOIN SpotifyClone.seguindo_artistas AS sa
ON sa.artista_id = al.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album
);
