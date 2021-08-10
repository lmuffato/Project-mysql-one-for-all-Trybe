CREATE VIEW faturamento_atual AS
SELECT ROUND(MIN(PlanCost), 2) AS faturamento_minimo,
ROUND(MAX(PlanCost), 2) AS faturamento_maximo,
ROUND(AVG(PlanCost), 2) AS faturamento_medio,
ROUND(SUM(PlanCost), 2) AS faturamento_total
FROM SpotifyClone.PLANS AS pl
INNER JOIN
SpotifyClone.USERS AS usr
ON 
pl.PlanID = usr.PlanID;
