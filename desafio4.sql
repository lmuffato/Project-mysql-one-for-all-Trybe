CREATE VIEW top_3_artistas AS
  SELECT a.nome_artista AS artista, COUNT(*) AS seguidores
  FROM SpotifyClone.artista AS a
  INNER JOIN SpotifyClone.seguindo_artistas AS sa ON a.artista_id = sa.artista_id
  GROUP BY a.nome_artista
  ORDER BY seguidores DESC, artista ASC
  LIMIT 3;
