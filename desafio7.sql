CREATE VIEW perfil_artistas AS
  SELECT
    at.name AS artista,
    ab.name AS album,
    (
      SELECT COUNT(*)
      FROM SpotifyClone.follows AS f
      WHERE f.artist_id = at.artist_id
    ) AS seguidores
  FROM SpotifyClone.artists AS at
  INNER JOIN SpotifyClone.albuns AS ab
  ON ab.artist_id = at.artist_id
  ORDER BY `seguidores` DESC, `artista`, `album`;
