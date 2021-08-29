CREATE VIEW faturamento_atual AS 
SELECT ROUND(MIN(p.Value), 2) AS faturamento_minimo,
ROUND(MAX(p.Value), 2) AS faturamento_maximo,
ROUND(AVG(p.Value), 2) AS faturamento_medio,
ROUND(SUM(p.Value), 2) AS faturamento_total
FROM SpotifyClone.plans AS p
INNER JOIN SpotifyClone.users AS u
ON u.PlanId = p.id;
