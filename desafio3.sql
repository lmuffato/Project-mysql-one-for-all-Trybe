CREATE VIEW historico_reproducao_usuarios AS
  SELECT user_name AS usuario, song_title AS nome
  FROM SpotifyClone.users AS u
  INNER JOIN SpotifyClone.reproduction_history AS r
  ON u.user_id = r.user_id
  INNER JOIN SpotifyClone.songs AS s
  ON s.song_id = r.song_id
  ORDER BY user_name ASC, song_title ASC;
