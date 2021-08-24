/* Desafio 11 - Crie uma VIEW chamada cancoes_premium que exiba o nome e a quantidade
de vezes que cada canção foi tocada por pessoas usuárias do plano
familiar ou universitário, de acordo com os detalhes a seguir:

1. A primeira coluna deve exibir o nome da canção, com o alias "nome";

2. A segunda coluna deve exibir a quantidade de pessoas que já escutaram
aquela canção, com o alias "reproducoes";

3. Seus resultados devem estar agrupados pelo nome da canção e ordenados
em ordem alfabética. */
-- USE SpotifyClone;
CREATE VIEW cancoes_premium AS
SELECT
  so.song_name AS `nome`,
  COUNT(hi.user_id) AS `reproducoes`
FROM historic AS hi
INNER JOIN users AS us
  ON hi.user_id = us.user_id
INNER JOIN plans AS pl
  ON us.plan_id = pl.plan_id
INNER JOIN songs AS so
  ON hi.song_id = so.song_id
WHERE pl.plan_name IN ("familiar", "universitário")
GROUP BY so.song_name
ORDER BY
  `nome` ASC
;
