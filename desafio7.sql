/* Desafio 7 - Mostre uma relação de todos os álbuns produzidos por cada
pessoa artista, com a quantidade de seguidores que ela possui, de
acordo com os detalhes a seguir.
Para tal, crie uma VIEW chamada perfil_artistas, com as seguintes colunas:
1. A primeira coluna deve exibir o nome da pessoa artista, com o alias "artista".

2. A segunda coluna deve exibir o nome do álbum, com o alias "album".

3. A terceira coluna deve exibir a quantidade de pessoas seguidoras que aquela
pessoa artista possui e deve possuir o alias "seguidores".

Seus resultados devem estar ordenados de forma decrescente, baseando-se no
número de pessoas seguidoras. Em caso de empate no número de pessoas, ordene
os resultados pelo nome da pessoa artista em ordem alfabética e caso há
artistas com o mesmo nome, ordene os resultados pelo nome do álbum alfabeticamente. */
-- USE SpotifyClone;
CREATE VIEW perfil_artistas AS
SELECT
  ar.artist_name AS `artista`,
  al.album_name AS `album`,
  COUNT(fo.user_id) AS `seguidores`
FROM albums AS al
INNER JOIN artists AS ar
  ON al.artist_id = ar.artist_id
INNER JOIN `following` AS fo
  ON al.artist_id = fo.artist_id
GROUP BY
  al.album_name,
  ar.artist_name
ORDER BY
  `seguidores` DESC,
  `artista` ASC,
  `album` ASC;
