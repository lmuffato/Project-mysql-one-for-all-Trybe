CREATE VIEW perfil_artistas AS
SELECT art.artist_name AS artista,
  alb.album_name AS album,
  (
    SELECT COUNT(user_id)
    FROM SpotifyClone.followed_artists AS fa
    WHERE fa.artist_id = alb.artist_id
  ) AS seguidores
FROM SpotifyClone.albums AS alb
  INNER JOIN SpotifyClone.artists AS art ON alb.artist_id = art.artist_id
ORDER BY seguidores DESC,
  artista,
  album;
