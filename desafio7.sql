CREATE VIEW perfil_artistas AS (
  SELECT
    ar.artist AS `artista`,
    albumn AS `album`,
    uf.seguidores AS `seguidores`
  FROM SpotifyClone.albumns al
  INNER JOIN SpotifyClone.artists ar ON ar.artist_id = al.artist_id
  INNER JOIN ( 
      SELECT artist_id, COUNT(user_id) AS `seguidores`
      FROM SpotifyClone.user_follows
      GROUP BY artist_id
    ) uf ON uf.artist_id = ar.artist_id
  ORDER BY `seguidores` DESC, `artista`, `album`
);
