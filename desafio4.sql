-- challenge 4;

CREATE VIEW top_3_artistas AS
  SELECT artista, COUNT(usuario_id) AS seguidores
  FROM SpotifyClone.artistas AS artistas
  INNER JOIN SpotifyClone.artistas_seguidos AS seguidos
  ON artistas.artista_id=seguidos.artista_id
  GROUP BY  artista
  ORDER BY seguidores DESC, artista ASC
  LIMIT 3;
