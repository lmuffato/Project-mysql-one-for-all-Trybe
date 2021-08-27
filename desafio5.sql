CREATE VIEW top_2_hits_do_momento AS
  SELECT 
    m.name_music AS `cancao`,
    COUNT(m.name_music) AS `reproducoes`
  FROM SpotifyClone.history_musics AS h
    INNER JOIN SpotifyClone.musics AS m ON h.music_ID = m.music_ID
  GROUP BY `cancao`
  ORDER BY `reproducoes` DESC, `cancao` ASC
  LIMIT 2;
