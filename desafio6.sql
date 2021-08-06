CREATE VIEW faturamento_atual AS
SELECT MIN(a.price_plan) AS faturamento_minimo, MAX(a.price_plan) AS faturamento_maximo, 
ROUND(AVG(a.price_plan), 2) AS faturamento_medio, SUM(a.price_plan) AS faturamento_total
FROM SpotifyClone.plans AS a
INNER JOIN SpotifyClone.users AS b ON a.id_plan = b.id_plan;
