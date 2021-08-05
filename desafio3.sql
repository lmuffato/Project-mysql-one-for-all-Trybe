CREATE VIEW historico_reproducao_usuarios AS 
SELECT u.nome AS usuario,
c.musicas AS nome
FROM SpotifyClone.historico_reproducao AS h
JOIN SpotifyClone.usuario AS u
ON u.usuario_id = h.usuario_id
JOIN SpotifyClone.cancoes as c 
ON c.musicas_id = h.musicas_id
ORDER BY `usuario`, `nome`;
