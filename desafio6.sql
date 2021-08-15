CREATE VIEW faturamento_atual AS
SELECT
FORMAT(MAX(plano.valor_plano), 2)AS `faturamento_maximo`,
FORMAT(ROUND(AVG(plano.valor_plano), 2), 2) AS `faturamento_medio`,
FORMAT(MIN(plano.valor_plano), 2) AS `faturamento_minimo`,
FORMAT(SUM(plano.valor_plano), 2) AS `faturamento_total`
FROM SpotifyClone.planos AS plano
INNER JOIN SpotifyClone.usuarios AS users
ON plano.plano_ID = users.plano_ID;

drop view faturamento_atual;

select* from faturamento_atual;