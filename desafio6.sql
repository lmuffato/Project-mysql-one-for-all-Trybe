CREATE VIEW faturamento_atual AS (
SELECT 
(SELECT MIN(valor_plano) FROM SpotifyClone.planos) AS 'faturamento_minimo',
(SELECT MAX(valor_plano) FROM SpotifyClone.planos)  AS 'faturamento_maximo' ,
(SELECT ROUND((SUM(p.valor_plano))/COUNT(u.usuario_id), 2) 
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.planos AS p
ON u.plano_id = p.plano_id) AS 'faturamento_medio',
(SELECT SUM(valor_plano) FROM SpotifyClone.planos) AS 'faturamento_total'
);
