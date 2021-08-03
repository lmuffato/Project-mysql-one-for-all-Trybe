CREATE VIEW top_2_hits_do_momento AS 
  SELECT 
    m.name_music AS 'cancao', 
    COUNT(*) AS 'reproducoes'
  FROM music AS m
  INNER JOIN history AS h
  ON m.id_music = h.id_music
  GROUP BY m.id_music
  ORDER BY 2 DESC, 1;
  