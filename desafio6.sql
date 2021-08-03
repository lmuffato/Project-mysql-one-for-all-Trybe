CREATE VIEW faturamento_atual AS
    SELECT 
        MIN(plan_value) AS 'faturamento_minimo',
        MAX(plan_value) AS 'faturamento_maximo',
        ROUND(AVG(plan_value), 2) AS 'faturamento_medio',
        SUM(plan_value) AS 'faturamento_total'
    FROM
        plans AS pl
            INNER JOIN
        SpotifyClone.users AS us ON pl.plan_id = us.plan_id;
