CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario_nome AS 'usuario', c.cancao_nome AS 'nome'
FROM SpotifyClone.historico_de_reproducoes AS h
INNER JOIN SpotifyClone.cancoes c
ON c.cancao_id = h.cancao_id
INNER JOIN SpotifyClone.usuarios u
ON u.usuario_id = h.usuario_id
ORDER BY u.usuario_nome ASC, c.cancao_nome ASC;
