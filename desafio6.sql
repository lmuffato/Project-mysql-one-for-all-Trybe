CREATE VIEW faturamento_atual AS 
SELECT MIN(s.price)  AS faturamento_minimo,
ROUND(MAX(s.price), 2) AS faturamento_maximo,
CAST(ROUND(AVG(s.price), 2) AS DECIMAL(10,2)) AS faturamento_medio,
ROUND(SUM(s.price), 2) AS faturamento_total
FROM SpotifyClone.subscriptions s
INNER JOIN SpotifyClone.`user`  u
WHERE s.subscription_id = u.subscription;
