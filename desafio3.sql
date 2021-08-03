CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario_nome AS usuario, c.cancao_nome AS nome
FROM SpotifyClone.historico_reproducao AS h
INNER JOIN SpotifyClone.usuario AS u
ON h.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.cancao AS c
ON h.cancao_id = c.cancao_id
ORDER BY `usuario` ASC, `nome` ASC;
