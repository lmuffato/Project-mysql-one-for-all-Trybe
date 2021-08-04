CREATE VIEW historico_reproducao_usuarios AS
  SELECT
    users_name AS `usuario`,
    s.songs_name AS `nome`
  FROM  SpotifyClone.users AS u
  INNER JOIN SpotifyClone.reproductions_history AS rh
  ON u.users_id = rh.users_id
  INNER JOIN SpotifyClone.songs AS s
  ON rh.songs_id = s.songs_id
  ORDER BY `usuario` ASC, `nome` ASC;
