CREATE VIEW `SpotifyClone`.top_3_artistas AS
  SELECT
    `artists`.name AS `artista`,
    COUNT (`users_artists`.artist_id) AS `seguidores`
  FROM
    `SpotifyClone`.artists AS `artists`
    INNER JOIN `SpotifyClone`.users_artists AS `users_artists` ON `users_artists`.artist_id = `artists`.artist_id
    GROUP BY
      `users_artists`.artist_id
    ORDER BY
      `seguidores` DESC,
      `artista` ASC
    LIMIT 3;
