CREATE VIEW perfil_artistas AS (
  SELECT
    ar.name_artist AS `artista`,
    al.name_album AS `album`,
    COUNT(f.user_id) AS `seguidores`
  FROM SpotifyClone.artist AS ar
  INNER JOIN SpotifyClone.album AS al
  ON ar.artista_id = al.artista_id
  INNER JOIN SpotifyClone.following AS f
  ON f.artista_id = al.artista_id
  GROUP BY al.name_album, ar.name_artist
  ORDER BY `seguidores` DESC, `artista`, `album`
);
