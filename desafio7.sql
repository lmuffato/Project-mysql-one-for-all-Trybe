CREATE VIEW perfil_artistas AS
SELECT a.artist AS artista,
ab.album AS album,
(SELECT COUNT(*) FROM following 
WHERE artist_id = a.artist_id) AS seguidores
FROM album ab
INNER JOIN artist a ON ab.artist_id = a.artist_id
ORDER BY seguidores DESC, artista, album;
