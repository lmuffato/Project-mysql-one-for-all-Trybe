CREATE VIEW perfil_artistas AS
SELECT a.name_artist AS artista, b.album_name AS album, COUNT(c.id_artist) AS seguidores
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albums AS b ON a.id_artist = b.id_artist
INNER JOIN SpotifyClone.follow_artist AS c ON a.id_artist = c.id_artist
GROUP BY a.name_artist, b.album_name
ORDER BY seguidores DESC, artista;
