CREATE VIEW perfil_artistas AS
SELECT artist.name AS artista, alb.name AS album, COUNT(f.artist_id) AS seguidores
FROM SpotifyClone.artist AS artist
INNER JOIN SpotifyClone.album AS alb
ON artist.artist_id = alb.artist_id
INNER JOIN SpotifyClone.follow_artist AS f
ON artist.artist_id = f.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
