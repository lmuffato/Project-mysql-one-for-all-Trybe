CREATE VIEW cancoes_premium AS
SELECT
c.cancao AS `nome`,
COUNT(c.cancao_id) AS `reproducoes`
FROM SpotifyClone.historico_de_reproducoes AS hr
INNER JOIN SpotifyClone.cancoes AS c
ON c.cancao_id = hr.cancao_id
INNER JOIN SpotifyClone.usuarios AS u
ON hr.usuario_id = u.usuario_id
AND u.plano_id IN (2, 3)
GROUP BY `nome`
ORDER BY `nome`;
