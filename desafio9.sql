/* Desafio 9 - Crie uma procedure chamada albuns_do_artista que recebe
como parâmetro o nome de uma pessoa artista e em retorno deve exibir as
seguintes colunas:

1. O nome da pessoa artista, com o alias "artista".

2. O nome do álbum, com o alias "album".

3. Os resultados devem ser ordenados pelo nome do álbum em ordem alfabética.

Confirme a execução correta da procedure, chamando-a e passando o nome
igual a "Walter Phoenix". */
-- USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE
    albuns_do_artista(IN artistName VARCHAR(100))
BEGIN
SELECT
  ar.artist_name AS `artista`,
  al.album_name AS `album`
FROM artists AS ar
INNER JOIN albums AS al
  ON ar.artist_id = al.artist_id
WHERE artist_name = artistName
ORDER BY
  `album` ASC;
END $$

DELIMITER ;

/* Teste da Procedure */
-- CALL albuns_do_artista("Walter Phoenix");
