CREATE VIEW top_2_hits_do_momento AS 
  SELECT 
    songs_name AS `cancao`,
    COUNT(songs_name) AS `reproducoes`
  FROM SpotifyClone.songs AS s
  INNER JOIN SpotifyClone.reproductions_history AS rh
  ON s.songs_id = rh.songs_id
  GROUP BY songs_name
  ORDER BY `reproducoes` DESC, `cancao` ASC
  LIMIT 2;
