CREATE VIEW perfil_artistas AS
SELECT art.name AS artista,
alb.album_title AS album,
COUNT(fol.followed_artist) AS seguidores
FROM SpotifyClone.albums AS alb
INNER JOIN SpotifyClone.artists AS art ON alb.artist_id = art.artist_id
INNER JOIN SpotifyClone.followers AS fol ON art.artist_id = fol.followed_artist
GROUP BY alb.album_id
ORDER BY seguidores DESC, artista, album;
