CREATE VIEW faturamento_atual AS
SELECT ROUND(MIN(valor_plano), 2) AS 'faturamento_minimo',
ROUND(MAX(valor_plano), 2) AS 'faturamento_maximo',
ROUND(AVG(valor_plano), 2) AS 'faturamento_medio',
ROUND(SUM(valor_plano), 2) AS 'faturamento_total'
FROM planos AS p
INNER JOIN usuarios AS u
ON p.plano_id = u.plano_id;
