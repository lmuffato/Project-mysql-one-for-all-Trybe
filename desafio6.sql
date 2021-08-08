CREATE VIEW faturamento_atual AS
SELECT 
    ROUND(MIN(plan_value), 2) AS faturamento_minimo,
    ROUND(MAX(plan_value), 2) AS faturamento_maximo,
    CONVERT(ROUND(AVG(plan_value), 2), DECIMAL(4,2)) AS faturamento_medio,
    ROUND(SUM(plan_value), 2) AS faturamento_total
FROM
    Plan AS p
        INNER JOIN
    User_plan AS u ON p.plan_id = u.plan_id;
