CREATE VIEW faturamento_atual AS
SELECT
ROUND(MIN(p.plano_preco), 2) AS 'faturamento_minimo',
ROUND(MAX(p.plano_preco), 2) AS 'faturamento_maximo',
ROUND(AVG(p.plano_preco), 2) AS 'faturamento_medio',
ROUND(SUM(p.plano_preco), 2) AS 'faturamento_total'
FROM SpotifyClone.plano AS p
INNER JOIN
SpotifyClone.usuario AS u ON u.plano_id = p.plano_id;
