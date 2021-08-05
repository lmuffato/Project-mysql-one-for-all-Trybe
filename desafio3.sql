CREATE VIEW historico_reproducao_usuarios AS
SELECT u.nome AS usuario, c.musicas AS nome
FROM SpotifyClone.historico_reproducao AS h
JOIN SpotifyClone.usuario AS u
ON h.usuario_id = u.usuario_id
JOIN SpotifyClone.cancoes AS c
ON h.musicas_id = c.musicas_id
ORDER BY `usuario` ASC, `nome`;
