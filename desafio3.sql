CREATE VIEW historico_reproducao_usuarios AS
SELECT
  U.usuario AS usuario,
  S.song AS nome
FROM
  SpotifyClone.USUARIOS AS U
  INNER JOIN SpotifyClone.HISTORICOS AS H ON U.usuario_id = H.usuario_id
  INNER JOIN SpotifyClone.SONGS AS S ON S.song_id = H.song_id
ORDER BY
  usuario,
  nome;
