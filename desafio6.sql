CREATE VIEW faturamento_atual AS
SELECT 
ROUND(MIN(p.cost), 2) AS faturamento_minimo,
ROUND(MAX(p.cost), 2) AS faturamento_maximo,
ROUND(AVG(p.cost), 2) AS faturamento_medio,
ROUND(SUM(p.cost), 2) AS faturamento_total
FROM plan p
INNER JOIN user u ON p.plan_id = u.plan_id;
