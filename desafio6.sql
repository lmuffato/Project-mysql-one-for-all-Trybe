CREATE VIEW faturamento_atual AS
SELECT
MAX(plano.valor_plano)AS `faturamento_maximo`,
ROUND(AVG(plano.valor_plano), 2) AS `faturamento_medio`,
MIN(plano.valor_plano) AS `faturamento_minimo`,
SUM(plano.valor_plano) AS `faturamento_total`
FROM SpotifyClone.planos AS plano
INNER JOIN SpotifyClone.usuarios AS users
ON plano.plano_ID = users.plano_ID;
