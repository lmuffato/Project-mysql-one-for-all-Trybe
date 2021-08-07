CREATE VIEW faturamento_atual AS
SELECT
  ROUND(MIN(plano_valor), 2) AS `faturamento_minimo`,
  ROUND(MAX(plano_valor), 2) AS `faturamento_maximo`,
  ROUND(AVG(plano_valor), 2) AS `faturamento_medio`,
  ROUND(SUM(plano_valor), 2) AS `faturamento_total`
  FROM SpotifyClone.planos AS p
  INNER JOIN SpotifyClone.usuarios AS u ON u.plano_id = p.plano_id;
