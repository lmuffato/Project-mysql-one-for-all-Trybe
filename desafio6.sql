CREATE VIEW faturamento_atual AS 
SELECT CAST((MIN(s.price)) AS DECIMAL(10,2))  AS faturamento_minimo,
CAST(ROUND(MAX(s.price), 2) AS DECIMAL(10,2)) AS faturamento_maximo,
CAST(ROUND(AVG(s.price), 2) AS DECIMAL(10,2)) AS faturamento_medio,
CAST(ROUND(SUM(s.price), 2) AS DECIMAL(10,2)) AS faturamento_total
FROM SpotifyClone.subscriptions s
INNER JOIN SpotifyClone.`user`  u
WHERE s.subscription_id = u.subscription;
