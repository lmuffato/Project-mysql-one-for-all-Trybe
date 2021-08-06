CREATE VIEW faturamento_atual AS
SELECT
    MIN(p.cost) AS faturamento_minimo,
    MAX(p.cost) AS faturamento_maximo,
    ROUND(AVG(p.cost), 2) AS faturamento_medio,
    SUM(p.cost) AS faturamento_total
FROM 
    SpotifyClone.plan AS p
INNER JOIN
    SpotifyClone.user AS u
    ON p.plan_id = u.plan_id;
