CREATE VIEW cancoes_premium AS (
SELECT c.cancao AS 'nome',
COUNT(hr.usuario_id) AS 'reproducoes'
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_reproducoes AS hr
ON c.cancao_id = hr.cancao_id
INNER JOIN SpotifyClone.usuarios AS u
ON hr.usuario_id = u.usuario_id
WHERE u.plano_id IN (2, 3)
GROUP BY `nome`
ORDER BY `nome`
);
