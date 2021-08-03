CREATE VIEW `SpotifyClone`.perfil_artistas AS
  SELECT
    `artists`.name AS `artista`,
    `albums`.title AS `album`,
    COUNT (`users_artists`.artist_id) AS `seguidores`
  FROM
    `SpotifyClone`.artists AS `artists`
    INNER JOIN `SpotifyClone`.albums AS `albums` ON `albums`.artist_id = `artists`.artist_id
    INNER JOIN `SpotifyClone`.users_artists AS `users_artists` ON `users_artists`.artist_id = `artists`.artist_id
  GROUP BY
    `users_artists`.artist_id,
    `albums`.title
  ORDER BY
    `seguidores` DESC,
    `artista` ASC,
    `album` ASC;
