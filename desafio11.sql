CREATE VIEW cancoes_premium AS
SELECT
  S.song AS nome,
  COUNT(H.song_id) AS reproducoes
FROM
  SpotifyClone.SONGS AS S
  INNER JOIN SpotifyClone.USUARIOS AS U
  INNER JOIN SpotifyClone.HISTORICOS AS H ON H.song_id = S.song_id
  AND U.plano_id IN(2, 3)
  AND H.usuario_id = U.usuario_id
GROUP BY
  nome
ORDER BY
  nome;
