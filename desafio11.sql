CREATE VIEW cancoes_premium AS
  SELECT 
    m.music_name AS nome,
    COUNT(m.music_name) AS reproducoes
  FROM SpotifyClone.users AS u
  INNER JOIN SpotifyClone.music_history AS mh
  ON mh.user_id = u.user_id AND u.plan_id IN (2, 3)
  INNER JOIN SpotifyClone.music AS m
  ON mh.music_id = m.music_id
  GROUP BY m.music_name
  ORDER BY m.music_name;
