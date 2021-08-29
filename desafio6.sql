CREATE VIEW faturamento_atual AS
SELECT
MIN(value_plan) AS `faturamento_minimo`,
MAX(value_plan) AS `faturamento_maximo`,
ROUND(AVG(value_plan), 2) AS `faturamento_medio`,
SUM(value_plan) AS `faturamento_total`
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.plans AS p
ON p.plan_id = u.plan_id;
