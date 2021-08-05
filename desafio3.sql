CREATE VIEW historico_reproducao_usuarios AS
SELECT u.nome AS usuario, c.cancao AS nome
FROM SpotifyClone.historico_reproducoes h
INNER JOIN SpotifyClone.cancoes c ON c.cancao_id = h.cancao_id
INNER JOIN SpotifyClone.usuarios u ON u.usuario_id = h.usuario_id
ORDER BY `usuario`, `cancao`;
