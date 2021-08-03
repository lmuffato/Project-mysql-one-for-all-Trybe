USE SpotifyClone;
CREATE VIEW faturamento_atual AS
SELECT CONVERT(min(p.valor),DECIMAL(10,2)) AS 'faturamento_minimo',
max(p.valor) AS 'faturamento_maximo',
CONVERT(round(sum(p.valor)/count(u.usuario_id),2),DECIMAL(10,2)) AS 'faturamento_medio',
CONVERT((p.valor),DECIMAL(10,2)) AS 'faturamento_total'
FROM SpotifyClone.Usuarios AS u
INNER JOIN SpotifyClone.Planos AS p
ON u.plano_id = p.plano_id
GROUP BY valor;
