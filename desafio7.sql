CREATE VIEW perfil_artistas AS
  SELECT
    a.artist_name artista,
    al.album_name album,
    COUNT(ca.customer_id) seguidores
  FROM
    SpotifyClone.artist a
      INNER JOIN
    SpotifyClone.customer_artist ca ON ca.artist_id = a.artist_id
      INNER JOIN
    SpotifyClone.album al ON ca.artist_id = al.artist_id
  GROUP BY 
    artista,
    album
  ORDER BY 
    seguidores DESC,
    artista,
    album;
