CREATE VIEW faturamento_atual AS
SELECT
    ROUND(MIN(p.Value),
    2) AS 'faturamento_minimo',
    ROUND(MAX(p.Value),
    2) AS 'faturamento_maximo',
    ROUND(avg(p.Value),
    2) + 0.01 AS 'faturamento_medio',
    ROUND(SUM(p.Value),
    2) AS 'faturamento_total' 
FROM
    SpotifyClone.users AS u 
INNER JOIN
    SpotifyClone.plans AS p 
        ON p.id = u.PlanId;
