CREATE VIEW faturamento_atual AS
SELECT 
    ROUND(MIN(P.valor_plano), 2) AS faturamento_minimo,
    ROUND(MAX(P.valor_plano), 2) AS faturamento_maximo,
    ROUND(AVG(P.valor_plano), 2) AS faturamento_medio,
    ROUND(SUM(P.valor_plano), 2) AS faturamento_total
FROM SpotifyClone.planos AS P
INNER JOIN SpotifyClone.usuarios AS U
ON P.plano_id = U.plano_id;
