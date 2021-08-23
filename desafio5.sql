/* Desafio 5 - Estamos fazendo um estudo das músicas mais tocadas e
precisamos saber quais são as duas músicas mais tocadas no momento.
Crie uma VIEW chamada top_2_hits_do_momento que possua duas colunas:
1. primeira coluna deve possuir o alias "cancao" e exibir o nome da canção.
2. A segunda coluna deve possuir o alias "reproducoes" e exibir a
quantidade de pessoas que já escutaram a canção em questão. */
-- USE SpotifyClone;
CREATE VIEW top_2_hits_do_momento AS
SELECT
  so.song_name AS `cancao`,
  COUNT(hi.song_id) AS `reproducoes`
FROM
  historic AS hi
INNER JOIN songs AS so
  ON hi.song_id = so.song_id
GROUP BY
  `cancao`
ORDER BY
  `reproducoes` DESC,
  `cancao` ASC
LIMIT 2;
