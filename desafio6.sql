CREATE VIEW faturamento_atual AS
SELECT MIN(p.plano_preco) AS faturamento_minimo,
MAX(p.plano_preco) AS faturamento_maximo,
ROUND(AVG(p.plano_preco), 2) AS faturamento_medio,
SUM(p.plano_preco) AS faturamento_total
FROM SpotifyClone.planos AS p
JOIN SpotifyClone.usuario AS u
ON u.plano_id = p.plano_id;
