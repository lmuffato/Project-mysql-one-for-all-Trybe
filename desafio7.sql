CREATE VIEW perfil_artistas AS
SELECT ar.artist_name AS artista,
al.album_name AS album,
(
SELECT COUNT(*)
FROM SpotifyClone.user_likes AS u
WHERE u.artist_id=ar.id
) AS seguidores
FROM SpotifyClone.albums AS al
INNER JOIN SpotifyClone.artists AS ar ON al.artist_id=ar.id
ORDER BY seguidores DESC, artista, album;
