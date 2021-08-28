CREATE VIEW perfil_artistas AS
  SELECT
    a.name_artists AS `artista`,
    ab.name_album AS `album`,
    (SELECT
      COUNT(fa.user_ID)
    FROM SpotifyClone.follower_artists AS fa
      WHERE fa.artists_ID = ab.artists_ID
    ) AS `seguidores`
  FROM SpotifyClone.album AS ab
    INNER JOIN SpotifyClone.artists AS a ON a.artists_ID = ab.artists_ID
  ORDER BY `seguidores` DESC, `artista`, `album`;
