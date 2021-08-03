-- DESAFIO 4: Crie uma VIEW com o nome top_3_artistas que deve mostrar somente as três pessoas artistas mais populares no banco SpotifyClone, possuindo as seguintes colunas:

CREATE VIEW top_3_artistas (`artista`, `seguidores`) AS

  SELECT
    A.artista,
    COUNT(S.usuario_id)
  FROM SpotifyClone.ARTISTA A
  INNER JOIN SpotifyClone.SEGUIDORES S
  ON S.artista_id = A.artista_id
  GROUP BY 1
  ORDER BY 2 DESC, 1
  LIMIT 3;
