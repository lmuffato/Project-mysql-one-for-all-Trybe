CREATE VIEW historico_reproducao_usuarios AS (
  SELECT
    user_name AS `usuario`,
    s.song AS `nome`
  FROM SpotifyClone.users AS u
  INNER JOIN SpotifyClone.historic AS h
  ON h.user_id = u.user_id
  INNER JOIN SpotifyClone.songs AS s
  ON h.song_id = s.song_id
  ORDER BY `usuario`, `nome`
);
