CREATE VIEW top_2_hits_do_momento AS
  SELECT s.song_title AS cancao, COUNT(r.user_id) AS reproducoes
  FROM SpotifyClone.songs AS s
  INNER JOIN SpotifyClone.reproduction_history AS r
  ON s.song_id = r.song_id
  GROUP BY s.song_id
  ORDER BY COUNT(r.user_id) DESC, s.song_title ASC LIMIT 2;
