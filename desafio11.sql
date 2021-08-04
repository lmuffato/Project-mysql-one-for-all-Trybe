CREATE VIEW `SpotifyClone`.cancoes_premium AS
  SELECT
    `songs`.title AS `nome`,
    COUNT(`songs_users`.song_id) AS `reproducoes`
  FROM
    `SpotifyClone`.songs AS `songs`
    INNER JOIN `SpotifyClone`.songs_users AS `songs_users` ON `songs_users`.song_id = `songs`.song_id
    INNER JOIN `SpotifyClone`.users AS `users` ON `users`.user_id = `songs_users`.user_id
  WHERE
    `users`.plan_id <> 1
  GROUP BY
    `nome`
  ORDER BY
    `nome` ASC;
