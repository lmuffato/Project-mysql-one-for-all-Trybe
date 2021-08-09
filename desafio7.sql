CREATE VIEW perfil_artistas AS (
  SELECT
    (
      SELECT artist_name FROM SpotifyClone.Artists AS ar
      WHERE ar.artist_id = al.artist_id
    ) AS artista,
    album_name AS album,
    (
      SELECT COUNT(*) FROM SpotifyClone.FollowedArtist AS fa
      WHERE fa.artist_id = al.artist_id
      GROUP BY fa.artist_id
    ) AS seguidores
  FROM SpotifyClone.Albums AS al
  ORDER BY seguidores DESC, artista
);
