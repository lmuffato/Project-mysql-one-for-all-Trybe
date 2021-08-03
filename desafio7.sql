CREATE VIEW perfil_artistas AS
SELECT ar.artista, al.album, COUNT(*) AS seguidores
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.usuario_artista AS ua
ON ua.artista_id = ar.artista_id
LEFT JOIN SpotifyClone.albums AS al
ON al.artista_id = ar.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
