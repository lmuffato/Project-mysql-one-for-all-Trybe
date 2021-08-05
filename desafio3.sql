CREATE VIEW historico_reproducao_usuarios AS
  SELECT
    u.name AS usuario,
    s.name AS nome
  FROM SpotifyClone.reproductions AS r
  LEFT JOIN SpotifyClone.users AS u
  ON r.user_id = u.user_id
  LEFT JOIN SpotifyClone.songs AS s
  ON r.song_id = s.song_id
  ORDER BY usuario, nome;
