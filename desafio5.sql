CREATE VIEW `top_2_hits_do_momento` AS
  SELECT 
      s.song_name AS `cancao`, COUNT(*) AS `reproducoes`
  FROM
      SpotifyClone.history AS h
          INNER JOIN
      SpotifyClone.songs AS s ON s.song_id = h.song_id
  GROUP BY `cancao`
  ORDER BY `reproducoes` DESC , `cancao`
  LIMIT 2;
