CREATE VIEW faturamento_atual AS (
SELECT 
(SELECT ROUND(MIN(plano_valor), 2) FROM SpotifyClone.planos) AS faturamento_minimo,
(SELECT ROUND(MAX(plano_valor), 2) FROM SpotifyClone.planos) AS faturamento_maximo,
(SELECT ROUND(AVG(planos.plano_valor ), 2) FROM SpotifyClone.usuarios AS usuarios
INNER JOIN SpotifyClone.planos AS planos
ON usuarios.plano_id = planos.plano_id
) AS faturamento_medio,
(SELECT ROUND(SUM(plano_valor), 2) FROM SpotifyClone.planos) AS faturamento_total
);
