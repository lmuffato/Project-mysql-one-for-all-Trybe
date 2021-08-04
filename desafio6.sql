-- DROP VIEW faturamento_atual;

CREATE VIEW faturamento_atual AS
    SELECT 
        CONCAT(price, '.00') AS 'faturamento_minimo',
        (SELECT 
                price
            FROM
                SpotifyClone.plans
            WHERE
                flat = 'familiar') AS 'faturamento_maximo',
        (SELECT 
                CONCAT(ROUND(AVG(p.price), 2), '0')
            FROM
                SpotifyClone.plans AS p
                    INNER JOIN
                SpotifyClone.users AS u ON p.flat_id = u.flat_id) AS 'faturamento_medio',
        (SELECT 
                SUM(p.price) AS 'faturamento_total'
            FROM
                SpotifyClone.plans AS p
                    INNER JOIN
                SpotifyClone.users AS u ON p.flat_id = u.flat_id)
    FROM
        SpotifyClone.plans
    WHERE
        flat = 'gratuito'
;

-- SELECT * FROM faturamento_atual;
