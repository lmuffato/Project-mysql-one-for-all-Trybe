CREATE VIEW historico_reproducao_usuarios AS 
  SELECT 
    u.name_user AS 'usuario',
    m.name_music AS 'nome'
  FROM user as u
  INNER JOIN history as h
  ON h.id_user = u.id_user
  INNER JOIN music as m
  ON m.id_music = h.id_music
  ORDER BY 1, 2;
