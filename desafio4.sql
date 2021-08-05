CREATE VIEW top_3_artistas AS
  SELECT
    A.artista artista,
    COUNT(DISTINCT US.usuario_id) seguidores
  FROM 
    SpotifyClone.ARTISTAS A
      INNER JOIN
    SpotifyClone.USUARIOS_SEGUIDAS US ON A.artista_id = US.artista_id
  GROUP BY artista
  ORDER BY seguidores DESC
  LIMIT 3;
