CREATE VIEW faturamento_atual AS (
SELECT 
(SELECT CAST(ROUND(MIN(plano_valor), 2) AS DECIMAL(4, 2)) FROM SpotifyClone.planos) AS faturamento_minimo,
(SELECT CAST(ROUND(MAX(plano_valor), 2) AS DECIMAL(4, 2)) FROM SpotifyClone.planos) AS faturamento_maximo,
(SELECT CAST(ROUND(AVG(planos.plano_valor ), 2) AS DECIMAL(4, 2))
FROM SpotifyClone.usuarios AS usuarios
INNER JOIN SpotifyClone.planos AS planos
ON usuarios.plano_id = planos.plano_id
) AS faturamento_medio,
(SELECT CAST(ROUND(SUM(plano_valor), 2) AS DECIMAL(4, 2)) FROM SpotifyClone.planos) AS faturamento_total
);
