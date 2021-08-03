CREATE VIEW perfil_artistas AS
  SELECT 
    A.artist_name AS `artista`,
    AL.album_name AS `album`,
    COUNT(F.user_id) AS `seguidores`
  FROM SpotifyClone.Albuns AS AL
  INNER JOIN SpotifyClone.Artists AS A
  INNER JOIN SpotifyClone.Followed_artists AS F
  ON AL.artist_id = A.artist_id AND F.artist_id = A.artist_id
  GROUP BY AL.album_name
  ORDER BY `seguidores` DESC, `album` ASC;
