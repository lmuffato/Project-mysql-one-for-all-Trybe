CREATE VIEW faturamento_atual AS
SELECT 
MIN(p.PLAN_VALUE) AS "faturamento_minimo", 
MAX(p.PLAN_VALUE) AS "faturamento_maximo",
ROUND(AVG(p.PLAN_VALUE),2) AS "faturamento_medio", 
ROUND(SUM(p.PLAN_VALUE),2) AS "faturamento_total"
FROM SpotifyClone.PLAN AS p
INNER JOIN `USER` AS u
ON p.PLAN_ID=u.PLAN_ID
;
