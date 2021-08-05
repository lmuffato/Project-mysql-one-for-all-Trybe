CREATE OR REPLACE VIEW top_3_artistas AS
  SELECT 
    a.name AS artista, COUNT(fa.artist_id) AS seguidores 
  FROM 
    artist AS a, follow_artist AS fa
  GROUP BY 
    artista, a.id, fa.artist_id
  HAVING 
    a.id = fa.artist_id
  ORDER BY
    seguidores DESC, artista
  LIMIT 
    3;
