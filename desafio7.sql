CREATE VIEW perfil_artistas AS
SELECT
    ar.name AS artista,
    al.name AS album,
    COUNT(f.user_id) AS seguidores
FROM 
    SpotifyClone.artist AS ar
INNER JOIN
    SpotifyClone.album AS al
    ON ar.artist_id = al.artist_id
INNER JOIN
    SpotifyClone.following AS f
    ON ar.artist_id = f.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
