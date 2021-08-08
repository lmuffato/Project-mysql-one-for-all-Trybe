CREATE VIEW perfil_artistas AS
SELECT
  art.artist_name AS artista,
  alb.album_name AS album,
  (
    SELECT
      COUNT(user_id)
    FROM
      SpotifyClone.seguidores AS s
    WHERE
      s.artist_id = alb.artist_id
  ) AS seguidores
FROM
  SpotifyClone.albuns AS alb
  INNER JOIN SpotifyClone.artistas AS art ON alb.artist_id = art.artist_id
ORDER BY
  seguidores DESC,
  artista,
  album;
