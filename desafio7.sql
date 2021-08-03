-- DESAFIO 7: Mostre uma relação de todos os álbuns produzidos por cada pessoa artista, com a quantidade de seguidores que ela possui, de acordo com os detalhes a seguir. Para tal, crie uma VIEW chamada perfil_artistas, com as seguintes colunas:

CREATE VIEW perfil_artistas (`artista`, `album`, `seguidores`) AS

  SELECT
    artista,
    album_nome,
    COUNT(S.artista_id)
  FROM SpotifyClone.ARTISTA A
  INNER JOIN SpotifyClone.ALBUM B
  ON B.artista_id = A.artista_id
  INNER JOIN SpotifyClone.SEGUIDORES S
  ON S.artista_id = A.artista_id
  GROUP BY 1,2
  ORDER BY 3 DESC, 1, 2;
