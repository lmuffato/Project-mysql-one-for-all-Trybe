CREATE VIEW perfil_artistas AS
  SELECT
    artists.artist_name AS artista,
    albuns.album_name AS album,
    COUNT(fart.user_id) AS seguidores
  FROM 
    SpotifyClone.artists AS artists
      INNER JOIN
    SpotifyClone.albuns AS albuns ON albuns.artist_id = artists.artist_id
      INNER JOIN
    SpotifyClone.following_artist AS fart ON fart.artist_id = artists.artist_id
  GROUP BY 
    artista,
    album
  ORDER BY 
    seguidores DESC,
    artista,
    album;
