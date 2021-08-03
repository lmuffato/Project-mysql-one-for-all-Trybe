CREATE VIEW historico_reproducao_usuarios AS
SELECT u.nome_usuario AS 'usuario', c.nome_cancao AS 'nome'
FROM SpotifyClone.Historico_de_reproducoes AS h
INNER JOIN SpotifyClone.Cancoes c
ON c.cancao_id = h.cancao_id
INNER JOIN SpotifyClone.Usuarios u
ON u.usuario_id = h.usuario_id
ORDER BY u.nome_usuario ASC, c.nome_cancao ASC;

-- SELECT * FROM historico_reproducao_usuarios;
