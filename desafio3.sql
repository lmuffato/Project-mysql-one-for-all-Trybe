CREATE VIEW historico_reproducao_usuarios AS 
SELECT u.nome AS 'usuario', m.nome_musica AS 'nome'
FROM SpotifyClone.historico_de_musicas AS h
INNER JOIN SpotifyClone.musicas AS m
ON m.id = h.musica_id
INNER JOIN SpotifyClone.usuarios AS u
ON u.id = h.usuario_id
ORDER BY `usuario`, `nome`;
