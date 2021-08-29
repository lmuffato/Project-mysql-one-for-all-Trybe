CREATE VIEW `SpotifyClone`.cancoes_premium AS
  SELECT
    `s`.Name AS `nome`,
    COUNT(`h`.SongId) AS `reproducoes`
  FROM
    `SpotifyClone`.songs AS `s`
    INNER JOIN `SpotifyClone`.user_history AS `h` ON `h`.SongId = `s`.id
    INNER JOIN `SpotifyClone`.users AS `u` ON `u`.id = `h`.UserId
  WHERE
    `u`.PlanId <> 1
  GROUP BY
    `nome`
  ORDER BY
    `nome` ASC;
