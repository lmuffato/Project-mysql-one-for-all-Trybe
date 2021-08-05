CREATE VIEW cancoes_premium AS
SELECT c.cancao AS nome,
COUNT(hr.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_reproducoes AS hr
ON c.cancao_id = hr.cancao_id
INNER JOIN SpotifyClone.usuarios AS u
ON hr.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.planos AS p
ON p.plano_id = u.plano_id
WHERE p.plano_id IN(2,3)
GROUP BY hr.cancao_id
ORDER BY cancao;
