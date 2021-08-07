CREATE VIEW faturamento_atual AS
    SELECT
        (SELECT
                MIN(price)
            FROM
                SpotifyClone.plans) AS faturamento_minimo,
        (SELECT
                MAX(price)
            FROM
                SpotifyClone.plans) AS faturamento_maximo,
        ROUND(AVG(price), 2) AS faturamento_medio,
        SUM(price) AS faturamento_total
    FROM
        SpotifyClone.users u
            INNER JOIN
        SpotifyClone.plans p ON u.plan_id = p.plan_id;
