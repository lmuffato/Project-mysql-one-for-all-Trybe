CREATE VIEW historico_reproducao_usuarios AS (
  SELECT
    u.user AS `usuario`,
    s.song AS `nome`
  FROM
    SpotifyClone.played_songs AS ps
  INNER JOIN SpotifyClone.users u ON ps.user_id = u.user_id
  INNER JOIN SpotifyClone.songs s ON ps.song_id = s.song_id
  ORDER BY `usuario`, `nome`
);
