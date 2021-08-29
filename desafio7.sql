CREATE VIEW perfil_artistas AS
SELECT 
  arts.artist AS 'artista',
  alb.album AS 'album',
  COUNT(artsfollow.user_id) AS 'seguidores'
FROM SpotifyClone.users_artists_following AS artsfollow
  INNER JOIN
  SpotifyClone.artists AS arts ON artsfollow.artist_id = arts.artist_id
  INNER JOIN
  SpotifyClone.albums AS alb ON arts.artist_id = alb.artist_id
GROUP BY alb.album_id
ORDER BY seguidores DESC , artista ASC , album ASC;
