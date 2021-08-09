CREATE VIEW faturamento_atual AS (
SELECT
ROUND(MIN(p.price),2) faturamento_minimo,
ROUND(MAX(p.price),2) faturamento_maximo,
ROUND(AVG(p.price),2) faturamento_medio,
ROUND(SUM(p.price),2) faturamento_total
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.plans AS p
ON p.plan_id = u.plan_id
);
