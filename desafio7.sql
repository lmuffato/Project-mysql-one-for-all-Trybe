CREATE VIEW perfil_artistas AS
  SELECT 
    A.artist_name AS `artista`,
    AL.album_name AS `album`,
    (SELECT COUNT(*) FROM SpotifyClone.Followed_artists AS F
      WHERE A.artist_id = F.artist_id) AS `seguidores`
  FROM SpotifyClone.Albuns AS AL
  INNER JOIN SpotifyClone.Artists AS A
  ON AL.artist_id = A.artist_id
  ORDER BY `seguidores` DESC, `artista` ASC, `album` ASC;
