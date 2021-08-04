CREATE VIEW cancoes_premium AS
  SELECT 
    m.name_music AS 'nome', 
    COUNT(*) AS 'reproducoes'
  FROM music AS m
  INNER JOIN history AS h
  ON h.id_music = m.id_music
  INNER JOIN user AS u
  ON u.id_user = h.id_user
  WHERE u.id_plan IN(2, 3)
  GROUP BY m.id_music
  ORDER BY 1;
