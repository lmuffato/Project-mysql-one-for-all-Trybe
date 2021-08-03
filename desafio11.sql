CREATE VIEW cancoes_premium AS
SELECT c.cancao AS nome, COUNT(c.cancao_id) AS reproducoes
FROM SpotifyClone.historico_reproducao AS h
JOIN SpotifyClone.cancao AS c
ON c.cancao_id = h.cancao_id
JOIN SpotifyClone.usuario AS u
ON h.usuario_id = u.usuario_id
AND u.plano_id IN (2, 3)
GROUP BY c.cancao_id
ORDER BY c.cancao;
