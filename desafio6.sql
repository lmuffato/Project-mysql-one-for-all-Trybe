CREATE VIEW faturamento_atual AS (
  SELECT
  MIN(p.plano_valor) AS 'faturamento_minimo',
  MAX(p.plano_valor) AS 'faturamento_maximo',
  ROUND((AVG(p.plano_valor)), 2) AS 'faturamento_medio',
  ROUND((SUM(p.plano_valor)), 2) AS 'faturamento_total'
  FROM SpotifyClone.usuario AS u
  INNER JOIN SpotifyClone.plano AS p
  ON p.plano_id = u.plano_id
);
