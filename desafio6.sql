CREATE VIEW faturamento_atual AS (
SELECT MIN(valor) AS 'faturamento_minimo',
MAX(valor) AS 'faturamento_maximo',
ROUND (AVG(valor),2) AS 'faturamento_medio',
SUM(valor) AS 'faturamento_total'
FROM SpotifyClone.Plano AS t1
INNER JOIN SpotifyClone.Usuario AS t2
ON t1.id_plano = t2.id_plano
);
