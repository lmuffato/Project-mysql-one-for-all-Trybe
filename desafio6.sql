CREATE VIEW faturamento_atual AS
SELECT FORMAT(MIN(p.valor), 2) AS faturamento_minimo, MAX(p.valor) AS faturamento_maximo,
FORMAT(AVG(p.valor), 2) AS faturamento_medio, SUM(p.valor) AS faturamento_total
FROM SpotifyClone.planos p
INNER JOIN SpotifyClone.usuarios u ON u.plano_id = p.plano_id;
