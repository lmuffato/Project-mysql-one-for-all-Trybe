CREATE VIEW faturamento_atual AS
SELECT ROUND(MIN(P.price), 2) AS `faturamento_minimo`,
MAX(P.price) AS `faturamento_maximo`,
ROUND(AVG(P.price), 2) AS `faturamento_medio`,
SUM(P.price) AS `faturamento_total`
FROM SpotifyClone.users AS U
INNER JOIN SpotifyClone.plans AS P
ON U.plan_id=P.plan_id;
