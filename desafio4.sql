CREATE VIEW top_3_artistas AS
  SELECT
    A.artista_nome AS `artista`,
    COUNT(DISTINCT SA.usuario_id) AS `seguidores`
  FROM 
    SpotifyClone.ARTISTA AS A
      INNER JOIN
    SpotifyClone.SEGUINDO_ARTISTA AS SA ON A.artista_id = SA.artista_id
  GROUP BY `artista`
  ORDER BY `seguidores` DESC
  LIMIT 3;
