CREATE OR REPLACE VIEW perfil_artistas AS
  SELECT
    a.name AS artista, al.name AS album, COUNT(fa.user_id) AS seguidores
  FROM 
    album AS al
  INNER JOIN
    artist a ON al.artist_id = a.id
  INNER JOIN
    follow_artist fa ON al.artist_id = fa.artist_id
  GROUP BY
    album, artista
  ORDER BY
    seguidores DESC, artista, album; 
