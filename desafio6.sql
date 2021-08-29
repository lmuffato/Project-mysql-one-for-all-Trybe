CREATE VIEW faturamento_atual AS
SELECT MIN(plan.Value) AS faturamento_minimo, 
MAX(plan.Value) AS faturamento_maximo, 
ROUND(AVG(plan.Value), 2) AS faturamento_medio,
SUM(plan.Value) AS faturamento_total
FROM SpotifyClone.plans AS plan
INNER JOIN SpotifyClone.users AS u
ON plan.id = u.PlanId;
