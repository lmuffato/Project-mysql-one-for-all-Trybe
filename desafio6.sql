CREATE VIEW faturamento_atual AS
SELECT ROUND(min(p.plan_price), 2) AS 'faturamento_minimo',
ROUND(max(p.plan_price), 2) AS 'faturamento_maximo',
ROUND(avg(p.plan_price), 2) AS 'faturamento_medio',
ROUND(sum(p.plan_price), 2) AS 'faturamento_medio'
FROM SpotifyClone.plans AS p
INNER JOIN SpotifyClone.users AS u
ON p.plan_id = u.plan_id;
