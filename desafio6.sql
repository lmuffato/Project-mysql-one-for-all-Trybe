CREATE VIEW `SpotifyClone`.faturamento_atual AS
  SELECT
    MIN(`plans`.price) AS `faturamento_minimo`,
    MAX(`plans`.price) AS `faturamento_maximo`,
    ROUND(SUM(`plans`.price) / COUNT (`users`.user_id), 2) AS `faturamento_medio`,
    SUM(`plans`.price) AS `faturamento_total`
  FROM
    `SpotifyClone`.plans AS `plans`
    INNER JOIN `SpotifyClone`.users AS `users` ON `users`.plan_id = `plans`.plan_id;
