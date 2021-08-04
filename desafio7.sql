CREATE VIEW perfil_artistas AS 
SELECT a.artist AS artista,
al.album AS album,
(
  SELECT COUNT(*) FROM SpotifyClone.followed_artists AS f
  WHERE f.artist_id = a.artist_id
) AS seguidores
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albums AS al
WHERE al.artist_id = a.artist_id
ORDER BY seguidores DESC, artista, album;
