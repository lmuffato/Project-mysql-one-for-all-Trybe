CREATE VIEW faturamento_atual AS (
SELECT ROUND(MIN(p.valor_plano), 2) AS faturamento_minimo,
ROUND(MAX(p.valor_plano),2) AS faturamento_maximo,
ROUND(AVG(p.valor_plano), 2) AS faturamento_medio,
ROUND(SUM(p.valor_plano), 2) AS faturamento_total
FROM SpotifyClone.planos AS p
INNER JOIN SpotifyClone.usuarios AS u -- INNER JOIN feito baseado no PR da Ana Ventura
ON u.plano_id = p.plano_id
);
