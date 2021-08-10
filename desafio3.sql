CREATE VIEW historico_reproducao_usuarios AS
SELECT
  u.usuario AS `usuario`,
  c.cancao AS `nome`
FROM SpotifyClone.historico_reproducao hr
INNER JOIN SpotifyClone.usuario u
  ON hr.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.cancao c
  ON hr.cancao_id = c.cancao_id
ORDER BY `usuario`, `nome`;
