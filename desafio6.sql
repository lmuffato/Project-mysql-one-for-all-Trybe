-- DROP VIEW faturamento_atual;

CREATE VIEW faturamento_atual AS
    SELECT ROUND(MIN(PRICE), 2) AS 'faturamento_minimo',
    ROUND(MAX(price), 2) AS 'faturamento_maximo',
    ROUND(AVG(price), 2) AS 'faturamento_medio',
    ROUND(SUM(price), 2) AS  'faturamento_total'
    FROM SpotifyClone.users AS u
    INNER JOIN SpotifyClone.plans AS p
    ON u.flat_id = p.flat_id ;

-- SELECT * FROM faturamento_atual;
