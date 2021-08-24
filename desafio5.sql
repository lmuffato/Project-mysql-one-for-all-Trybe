CREATE VIEW top_2_hits_do_momento as (
  SELECT
    s.song AS `cancao`,
    COUNT(user_id) AS `reproducoes`
  FROM SpotifyClone.played_songs ps
  INNER JOIN SpotifyClone.songs s ON s.song_id = ps.song_id
  GROUP BY ps.song_id
  ORDER BY `reproducoes` DESC, `cancao`
  LIMIT 2
);
