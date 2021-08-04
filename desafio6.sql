CREATE VIEW faturamento_atual AS
SELECT
(SELECT FORMAT(MIN(plan_price), 2) FROM plans) AS faturamento_minimo,
(SELECT FORMAT(MAX(plan_price), 2) FROM plans) AS faturamento_maximo,
FORMAT((SELECT CEIL(SUM(plan_price) / (SELECT COUNT(*) FROM users) * 100) / 100 FROM plans), 2) AS faturamento_medio,
FORMAT((SELECT SUM(plan_price) FROM plans), 2) AS faturamento_total
FROM user_status AS us
GROUP BY faturamento_total;
