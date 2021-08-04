CREATE VIEW faturamento_atual AS
SELECT
ROUND(MIN(p.PlanValue), 2) AS 'faturamento_minimo',
ROUND(MAX(p.PlanValue), 2) AS 'faturamento_maximo',
ROUND(AVG(p.PlanValue), 2) AS 'faturamento_medio',
ROUND(SUM(p.PlanValue), 2) AS 'faturamento_total'
FROM SpotifyClone.Plans p
INNER JOIN SpotifyClone.Users u
ON u.PlanID = p.PlanID;
