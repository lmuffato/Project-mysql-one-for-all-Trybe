/* 4. Crie uma VIEW com o nome top_3_artistas que deve mostrar somente
as três pessoas artistas mais populares no banco SpotifyClone, possuindo
as seguintes colunas:
1. A primeira coluna deve possuir o alias "artista" e exibir o nome da
pessoa artista.
2. A segunda coluna deve ter o alias "seguidores" e exibir a quantidade
de pessoas que estão seguindo aquela pessoa artista.*/
-- USE SpotifyClone;
CREATE VIEW top_3_artistas AS
SELECT
  ar.artist_name AS `artista`,
  COUNT(fo.user_id) AS `seguidores` 
FROM
  `following` AS fo
INNER JOIN artists AS ar
  ON fo.artist_id = ar.artist_id
GROUP BY
  ar.artist_name
ORDER BY
  `seguidores` DESC,
  `artista` ASC
LIMIT 3;
