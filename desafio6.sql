CREATE VIEW `SpotifyClone`.faturamento_atual AS
  SELECT
    MIN(`p`.Value) AS `faturamento_minimo`,
    MAX(`p`.Value) AS `faturamento_maximo`,
    ROUND(SUM(`p`.Value) / COUNT (`u`.id), 2) AS `faturamento_medio`,
    SUM(`p`.Value) AS `faturamento_total`
  FROM
    `SpotifyClone`.plans AS `p`
    INNER JOIN `SpotifyClone`.users AS `u` ON `u`.PlanId = `p`.id;
