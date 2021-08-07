CREATE VIEW cancoes_premium AS (
SELECT c.cancao AS nome,
COUNT(h.usuario_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_de_reproducoes AS h
INNER JOIN SpotifyClone.usuarios AS u
ON u.usuario_id = h.usuario_id
AND h.cancao_id = c.cancao_id
WHERE u.plano_id = 2
OR u.plano_id = 3
GROUP BY nome
ORDER BY nome ASC
);
