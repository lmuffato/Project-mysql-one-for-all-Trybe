CREATE VIEW historico_reproducao_usuarios AS
SELECT
u.usuario_name AS `usuario`,
c.cancao AS `nome`
FROM SpotifyClone.historico_de_reproducoes AS h
INNER JOIN SpotifyClone.usuarios AS u
ON h.usuario_ID = u.usuario_ID
INNER JOIN SpotifyClone.cancoes AS c
ON h.cancoes_ID = c.cancoes_ID
ORDER BY `usuario`, `nome` ASC;
