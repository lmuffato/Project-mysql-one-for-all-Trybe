CREATE VIEW historico_reproducao_usuarios (`usuario`, `nome`) AS
SELECT
  U.user_name,
  C.music_name
FROM
  SpotifyClone.user U
  INNER JOIN SpotifyClone.history R ON U.user_id = R.user_id
  INNER JOIN SpotifyClone.musics C ON C.music_id = R.music_id
ORDER BY
  U.user_name,
  C.music_name;
