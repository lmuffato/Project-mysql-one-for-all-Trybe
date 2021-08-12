CREATE VIEW faturamento_atual AS (
    SELECT
        MIN(p.plan_value) 'faturamento_minimo',
        MAX(p.plan_value) 'faturamento_maximo',
        ROUND(SUM(p.plan_value) / COUNT(u.user_id), 2) 'faturamento_medio',
        SUM(p.plan_value) 'faturamento_total'
    FROM
        plans p
    INNER JOIN
        users u USING (plan_id)
);
