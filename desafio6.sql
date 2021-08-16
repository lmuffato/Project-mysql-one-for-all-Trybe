CREATE VIEW faturamento_atual AS
SELECT
MIN(pla.valor_plano) AS 'faturamento_minimo',
MAX(pla.valor_plano) AS 'faturamento_maximo',
ROUND(AVG(pla.valor_plano), 2) AS 'faturamento_medio',
ROUND(SUM(pla.valor_plano), 2) AS 'faturamento_total'
FROM SpotifyClone.usuarios AS usu
JOIN SpotifyClone.planos AS pla ON usu.plano_id = pla.plano_id;
