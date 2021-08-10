CREATE VIEW faturamento_atual AS (
SELECT ROUND(MIN(p.plan_price), 2) AS 'faturamento_minimo',
ROUND(MAX(p.plan_price),2) AS 'faturamento_maximo',
ROUND(AVG(p.plan_price), 2) AS 'faturamento_medio',
ROUND(SUM(p.plan_price), 2) AS 'faturamento_total'
FROM SpotifyClone.plans AS p
INNER JOIN SpotifyClone.users AS u
ON u.plan_id = p.plan_id
);

