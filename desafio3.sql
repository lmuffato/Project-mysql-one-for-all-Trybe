CREATE VIEW historico_reproducao_usuarios AS (
  SELECT
    u.USER_NAME AS `usuario`,
    s.SONG_NAME AS `nome`
  FROM SpotifyClone.songs_played AS sp
  INNER JOIN SpotifyClone.user AS u
  ON sp.USER_ID = u.USER_ID
  INNER JOIN SpotifyClone.song AS s
  ON sp.SONG_ID = s.SONG_ID
  ORDER BY 1, 2
);

