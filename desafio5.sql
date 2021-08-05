CREATE VIEW top_2_hits_do_momento AS (
  SELECT
    s.song AS `cancao`,
    COUNT(h.user_id) AS `reproducoes`
  FROM SpotifyClone.songs AS s
  INNER JOIN SpotifyClone.historic as h
  ON s.song_id = h.song_id
  GROUP BY s.song
  ORDER BY `reproducoes` DESC
  LIMIT 2
);
