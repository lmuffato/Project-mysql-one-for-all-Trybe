
CREATE VIEW historico_reproducao_usuarios AS SELECT
us.nome AS "usuario",
cs.nome_das_cancoes AS "nome"
FROM SpotifyClone.usuario AS us
INNER JOIN SpotifyClone.historico_reproducoes AS hyst
ON hyst.usuario_id = us.usuario_id
INNER JOIN SpotifyClone.cancoes AS cs
ON cs.cancoes_id = hyst.cancoes_id
ORDER BY `usuario`,`nome`;
