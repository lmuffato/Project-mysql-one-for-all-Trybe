CREATE VIEW perfil_artistas AS
  SELECT 
    artists_name AS `artista`,
    albums_name AS `album`,
    COUNT(artists_name) AS `seguidores`
  FROM SpotifyClone.artists AS ar
  INNER JOIN SpotifyClone.albums AS al
  ON ar.artists_id = al.artists_id
  INNER JOIN SpotifyClone.followers AS f
  ON ar.artists_id = f.artists_id
  GROUP BY albums_name, artists_name
  ORDER BY `seguidores` DESC, `artista` ASC, `album` ASC;
