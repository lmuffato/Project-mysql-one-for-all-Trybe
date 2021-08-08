CREATE VIEW historico_reproducao_usuarios AS
SELECT
nome_usuario AS `usuario`,
(
SELECT nome_cancao
FROM SpotifyClone.Cancoes AS cancoes
WHERE historico.cancao_id = cancoes.cancao_id
) AS `nome`
FROM SpotifyClone.Usuarios AS usuarios
INNER JOIN SpotifyClone.Historico_de_reproducoes AS historico
ON usuarios.usuario_id = historico.usuario_id
ORDER BY `usuario`, `nome`;
