CREATE VIEW faturamento_atual AS
SELECT ROUND(MIN(P.price), 2) AS `faturamento_minimo`,
ROUND(MAX(P.price), 2) AS `faturamento_maximo`,
ROUND(AVG(P.price), 2) AS `faturamento_medio`,
ROUND(SUM(P.price), 2) AS `faturamento_total`
FROM SpotifyClone.users AS U
INNER JOIN SpotifyClone.plans AS P
ON U.plan_id=P.plan_id;
