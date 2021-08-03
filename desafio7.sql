CREATE VIEW perfil_artistas AS
SELECT
  art.artist_name AS 'artista',
  alb.album_name AS 'album',
  COUNT(alb.artist_id) AS 'seguidores'
FROM
  SpotifyClone.albuns AS alb
  JOIN SpotifyClone.artists AS art ON alb.artist_id = art.artist_id
  JOIN SpotifyClone.followed_artists AS fl ON alb.artist_id = fl.artist_id
GROUP BY
  alb.artist_id,
  alb.album_name
ORDER BY
  `seguidores` DESC,
  `artista`,
  `album`;
