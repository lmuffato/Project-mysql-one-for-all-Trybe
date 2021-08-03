CREATE VIEW top_3_artistas (`artista`, `seguidores`) AS
SELECT
  A.artist_name,
  COUNT(S.user_id)
FROM
  SpotifyClone.artists A
  INNER JOIN SpotifyClone.followed_artists S ON S.artist_id = A.artist_id
GROUP BY
  1
ORDER BY
  2 DESC,
  1
LIMIT
  3;
