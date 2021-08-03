CREATE VIEW top_3_artistas AS 
  SELECT 
    name_artist AS 'artista',
    COUNT(*) AS 'seguidores'
  FROM artist AS art
  INNER JOIN following AS f
  ON f.id_artist = art.id_artist
  GROUP BY name_artist
  ORDER BY 2 DESC, 1;