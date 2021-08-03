CREATE VIEW cancoes_premium AS
SELECT c.cancao AS nome, COUNT(*) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.usuario_reproducao AS ur
ON ur.cancao_id = c.cancao_id
INNER JOIN SpotifyClone.usuarios AS u
ON u.usuario_id = ur.usuario_id
WHERE u.plano_id IN (2, 3)
GROUP BY nome
ORDER BY nome;
