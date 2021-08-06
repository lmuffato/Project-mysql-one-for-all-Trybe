CREATE VIEW cancoes_premium AS
SELECT c.cancao AS nome,
COUNT(h.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes c
INNER JOIN SpotifyClone.historico_reproducoes h ON c.cancao_id = h.cancao_id
INNER JOIN SpotifyClone.usuarios u ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.planos p ON p.plano_id = u.plano_id
WHERE p.plano_id IN(2,3)
GROUP BY c.cancao
ORDER BY `nome`;
