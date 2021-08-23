/* 3. Crie uma VIEW chamada historico_reproducao_usuarios.
Essa VIEW deverá ter apenas duas colunas:
1. A primeira coluna deve possuir o alias "usuario" e exibir o nome
da pessoa usuária.
2. A segunda coluna deve possuir o alias "nome" e exibir o nome da
canção ouvida pela pessoa com base no seu histórico de reprodução. */

-- USE SpotifyClone;
SELECT *
  FROM historic AS hi
INNER JOIN users AS us
  ON hi.user_id = us.user_id
INNER JOIN songs AS so
  ON hi.song_id = so.song_id
ORDER BY us.user_name;
