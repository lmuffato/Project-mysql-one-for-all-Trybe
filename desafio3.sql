CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario AS usuario, c.cancao AS nome
FROM SpotifyClone.historico_reproducao AS h
JOIN SpotifyClone.usuario AS u
ON h.usuario_id = u.usuario_id
JOIN SpotifyClone.cancao AS c
ON h.cancao_id = c.cancao_id
ORDER BY `usuario`, `nome`;
