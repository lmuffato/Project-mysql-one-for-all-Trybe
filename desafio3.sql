CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario AS 'usuario',
c.cancao AS 'nome'
FROM SpotifyClone.Historico AS h
INNER JOIN SpotifyClone.Cancoes AS c
ON h.cancao_id = c.cancao_id
INNER JOIN SpotifyClone.Usuarios AS u
ON h.usuario_id = u.usuario_id
ORDER BY u.usuario, c.cancao;
