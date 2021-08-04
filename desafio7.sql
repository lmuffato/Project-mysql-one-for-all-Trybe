CREATE VIEW perfil_artistas AS
SELECT
(SELECT artist_name FROM artists WHERE artist_id = a.artist_id) AS artista,
album_name AS album,
(SELECT COUNT(*) FROM followers WHERE artist_id = a.artist_id) AS seguidores
FROM albums AS a
ORDER BY seguidores DESC, artista, album;
