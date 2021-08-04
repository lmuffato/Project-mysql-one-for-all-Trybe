CREATE VIEW perfil_artistas AS (
  SELECT
    CONCAT(a.FIRST_NAME, ' ', a.LAST_NAME) AS `artista`,
    al.ALBUM_NAME AS `album`,
    COUNT(fa.ARTIST_ID) AS `seguidores`
  FROM SpotifyClone.artist AS a
  INNER JOIN SpotifyClone.album AS al
  ON al.ARTIST_ID = a.ARTIST_ID
  INNER JOIN SpotifyClone.followed_artist AS fa
  ON fa.ARTIST_ID = a.ARTIST_ID
  GROUP BY al.ALBUM_ID
  ORDER BY 3 DESC, 1, 2
);
