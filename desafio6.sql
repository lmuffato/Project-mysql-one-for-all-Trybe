CREATE VIEW faturamento_atual AS
SELECT 
    MIN(p.price) AS `faturamento_minimo`,
    MAX(p.price) AS `faturamento_maximo`,
    ROUND(AVG(p.price), 2) AS `faturamento_medio`,
    ROUND(SUM(p.price), 2) AS `faturamento_total`
FROM
    SpotifyClone.plans AS p
        INNER JOIN
    SpotifyClone.users AS u ON u.plan_id = p.plan_id;
