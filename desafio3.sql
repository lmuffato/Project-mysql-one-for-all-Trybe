CREATE VIEW historico_reproducao_usuarios AS
  SELECT
    u.user_name AS usuario,
    m.music_name AS nome
  FROM SpotifyClone.music_history AS mh
  INNER JOIN SpotifyClone.users AS u
    ON u.user_id = mh.user_id
  INNER JOIN SpotifyClone.music AS m
    ON m.music_id = mh.music_id
  ORDER BY u.user_name, m.music_name;
