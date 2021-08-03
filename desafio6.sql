CREATE VIEW faturamento_atual AS 
SELECT MIN(s.price) AS faturamento_minimo,
MAX(s.price) AS faturamento_maximo,
ROUND(AVG(s.price), 2) AS faturamento_medio,
SUM(s.price) AS faturamento_total
FROM SpotifyClone.subscriptions s
INNER JOIN SpotifyClone.`user`  u
WHERE s.subscription_id = u.subscription;
