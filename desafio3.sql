CREATE VIEW `SpotifyClone`.historico_reproducao_usuarios AS
  SELECT
    `users`.name AS `usuario`,
    `songs`.title AS `nome`
  FROM
    `SpotifyClone`.users AS `users`
    INNER JOIN `SpotifyClone`.songs_users AS `songs_users` ON `songs_users`.user_id = `users`.user_id
    INNER JOIN `SpotifyClone`.songs AS `songs` ON `songs`.song_id = `songs_users`.song_id
  ORDER BY
    `usuario` ASC,
    `nome` ASC;
