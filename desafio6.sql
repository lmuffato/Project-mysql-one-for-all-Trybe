CREATE VIEW faturamento_anual AS
SELECT
  CONVERT(MIN(p.price), DECIMAL(10, 2)) AS 'faturamento_minimo',
  MAX(p.price) AS 'faturamento_maximo',
  CONVERT ( ROUND(SUM(p.price)/COUNT(u.user_id), 2), DECIMAL (10, 2)) AS 'faturamento_medio',
  CONVERT ( SUM(p.price), DECIMAL(10, 2)) AS 'faturamento_total'
FROM
  SpotifyClone.users AS u
INNER JOIN
  SpotifyClone.plans AS p
ON u.plan_id = p.plan_id;
