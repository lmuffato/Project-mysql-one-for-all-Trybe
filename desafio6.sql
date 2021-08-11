CREATE VIEW faturamento_atual AS
SELECT FORMAT(MIN(p.`value`), 2) AS faturamento_minimo, FORMAT(ROUND(AVG(p.`value`), 2), 2) AS faturamento_medio, FORMAT(MAX(p.`value`), 2) AS faturamento_maximo, FORMAT(SUM(DISTINCT p.`value`), 2) AS faturamento_total
FROM SpotifyClone.plan AS p
INNER JOIN SpotifyClone.user AS u
ON p.plan_id = u.plan_id;
