CREATE VIEW top_2_hits_do_momento AS (
  SELECT
    s.SONG_NAME AS `cancao`,
    COUNT(sp.SONG_ID) AS `reproducoes`
  FROM SpotifyClone.songs_played AS sp
  INNER JOIN SpotifyClone.song AS s
  ON sp.SONG_ID = s.SONG_ID
  GROUP BY 1
  ORDER BY 2 DESC, 1
  LIMIT 2
);
