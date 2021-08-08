CREATE VIEW SpotifyClone.top_2_hits_do_momento AS 
  SELECT 
    music_name AS `cancao`,
    COUNT(music_name) AS `reproducoes`
  FROM SpotifyClone.MUSIC AS m
  INNER JOIN SpotifyClone.PLAYBACK_HISTORY AS ph
  ON m.songs_id = ph.songs_id
  GROUP BY music_name
  ORDER BY `reproducoes` DESC, `cancao` ASC
  LIMIT 2;
