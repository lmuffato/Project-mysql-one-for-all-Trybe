CREATE VIEW top_2_hits_do_momento AS
  SELECT 
    S.song_name AS `cancao`,
    COUNT(UH.user_id) AS `reproducoes`
  FROM SpotifyClone.User_history AS UH
  INNER JOIN SpotifyClone.Songs AS S
  ON UH.song_id = S.song_id
  GROUP BY UH.song_id
  ORDER BY `reproducoes` DESC, `cancao` ASC
  LIMIT 2;
