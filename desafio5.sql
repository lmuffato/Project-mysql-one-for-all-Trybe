CREATE VIEW top_2_hits_do_momento AS
SELECT
  S.song AS cancao,
  COUNT(H.song_id) AS reproducoes
FROM
  SpotifyClone.SONGS AS S
  INNER JOIN SpotifyClone.HISTORICOS AS H ON S.song_id = H.song_id
  INNER JOIN SpotifyClone.USUARIOS AS U ON U.usuario_id = H.usuario_id
GROUP BY
  H.song_id
ORDER BY
  reproducoes DESC,
  cancao
LIMIT
  2;
