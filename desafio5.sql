CREATE VIEW `SpotifyClone`.top_2_hits_do_momento AS
  SELECT
    `songs`.title AS `cancao`,
    COUNT (`songs_users`.song_id) AS `reproducoes`
  FROM
    `SpotifyClone`.songs AS `songs`
    INNER JOIN `SpotifyClone`.songs_users AS `songs_users` ON `songs_users`.song_id = `songs`.song_id
    GROUP BY
      `songs_users`.song_id
    ORDER BY
      `reproducoes` DESC,
      `cancao` ASC
    LIMIT 2;
