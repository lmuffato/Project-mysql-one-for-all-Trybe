CREATE VIEW SpotifyClone.perfil_artistas AS
  SELECT 
    artist_name AS `artista`,
    album_name AS `album`,
    COUNT(artist_name) AS `seguidores`
  FROM SpotifyClone.ARTIST AS ar
  INNER JOIN SpotifyClone.ALBUM AS al
  ON ar.artist_id = al.artist_id
  INNER JOIN SpotifyClone.FOLLOW_ARTIST AS f
  ON ar.artist_id = f.artist_id
  GROUP BY album_name, artist_name
  ORDER BY `seguidores` DESC, `artista` ASC, `album` ASC;
