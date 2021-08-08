CREATE VIEW SpotifyClone.faturamento_atual AS
  SELECT
    MIN(plan_value) AS `faturamento_minimo`,
    MAX(plan_value) AS `faturamento_maximo`,
    ROUND(AVG(plan_value), 2) AS `faturamento_medio`,
    SUM(plan_value) AS `faturamento_total`
  FROM SpotifyClone.USERS AS u
  INNER JOIN SpotifyClone.PLANS AS p
  ON u.plan_id = p.plan_id;
