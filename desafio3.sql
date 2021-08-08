CREATE VIEW historico_reproducao_usuarios AS
SELECT
  u.user_name AS usuario,
  c.song_name AS nome
FROM
  SpotifyClone.historico AS h
  INNER JOIN SpotifyClone.usuarios AS u ON h.user_id = u.user_id
  INNER JOIN SpotifyClone.cancoes AS c ON h.song_id = c.song_id
ORDER BY
  usuario,
  nome;
  