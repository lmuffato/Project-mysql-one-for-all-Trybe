CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario AS usuario, c.cancao AS nome
FROM SpotifyClone.historico_de_reproducoes AS hr
INNER JOIN SpotifyClone.usuarios AS u
ON hr.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.cancoes AS c
ON hr.cancao_id = c.cancao_id
ORDER BY `usuario`, `nome`;
