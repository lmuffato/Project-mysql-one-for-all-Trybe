CREATE VIEW faturamento_atual AS
SELECT MIN(p.valor_plano) AS 'faturamento_minimo',
MAX(p.valor_plano) AS 'faturamento_maximo',
-- https://stackoverflow.com/questions/29677347/how-to-show-decimals-in-sql-instead-of-0
CONVERT(ROUND(AVG(p.valor_plano), 2), DECIMAL(10,2)) AS 'faturamento_medio',
SUM(p.valor_plano) AS 'faturamento_total'
FROM SpotifyClone.planos AS p
JOIN SpotifyClone.usuarios AS u
ON p.plano_id = u.plano_id;
