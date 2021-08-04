CREATE VIEW faturamento_atual AS
  SELECT
    MIN(plans_value) AS `faturamento_minimo`,
    MAX(plans_value) AS `faturamento_maximo`,
    ROUND(AVG(plans_value), 2) AS `faturamento_medio`,
    SUM(plans_value) AS `faturamento_total`
  FROM SpotifyClone.users AS u
  INNER JOIN SpotifyClone.plans AS p
  ON u.plans_id = p.plans_id;
