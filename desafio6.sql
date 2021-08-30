CREATE VIEW faturamento_atual AS 
SELECT ROUND(MIN(pla.Valor_plano), 2) AS faturamento_minimo,
ROUND(MAX(pla.Valor_plano), 2) AS faturamento_maximo,
ROUND(AVG(pla.Valor_plano), 2) AS faturamento_medio,
ROUND(SUM(pla.Valor_plano), 2) AS faturamento_total
FROM SpotifyClone.planos AS pla
INNER JOIN SpotifyClone.usuarios AS usu
ON usu.plano_id = plan.plano_id;
