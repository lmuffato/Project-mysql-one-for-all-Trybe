CREATE VIEW historico_reproducao_usuarios AS
  SELECT
    u.usuario_nome AS `usuario`,
    c.cancao AS `nome`
  FROM SpotifyClone.usuarios AS u
  INNER JOIN SpotifyClone.historico_reproducoes AS h
  INNER JOIN SpotifyClone.cancoes AS c
  ON u.usuario_id = h.usuario_id AND h.cancao_id = c.cancao_id
  ORDER BY `usuario`, `nome`;
