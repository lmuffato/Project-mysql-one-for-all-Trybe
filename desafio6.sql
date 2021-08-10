USE SpotifyClone;
CREATE VIEW faturamento_atual AS
SELECT ROUND(MIN(PlanCost), 2) AS faturamento_minimo,
ROUND(MAX(PlanCost), 2) AS faturamento_maximo,
ROUND(AVG(PlanCost), 2) AS faturamento_medio,
ROUND(SUM(PlanCost), 2) AS faturamento_total
FROM PLANS AS pl
INNER JOIN
USERS AS usr
ON 
pl.PlanID = usr.PlanID;
