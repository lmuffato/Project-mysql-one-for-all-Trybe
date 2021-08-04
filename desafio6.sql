CREATE VIEW faturamento_atual AS
SELECT
FORMAT(ROUND((MIN(p.PlanValue)), 2 ), 2) AS 'faturamento_minimo',
FORMAT(ROUND(MAX(p.PlanValue), 2), 2) AS 'faturamento_maximo',
FORMAT(ROUND(AVG(p.PlanValue), 2), 2) AS 'faturamento_medio',
FORMAT(ROUND(SUM(p.PlanValue), 2), 2) AS 'faturamento_total'
FROM SpotifyClone.Plans p
INNER JOIN SpotifyClone.Users u
ON u.PlanID = p.PlanID;
