CREATE VIEW top_2_hits_do_momento AS
  SELECT
    m.music_name AS cancao,
    COUNT(mh.music_id) AS reproducoes
  FROM SpotifyClone.music_history AS mh
  INNER JOIN SpotifyClone.music AS m
  ON m.music_id = mh.music_id
  GROUP BY mh.music_id
  ORDER BY COUNT(mh.music_id) DESC, m.music_name
  LIMIT 2;
