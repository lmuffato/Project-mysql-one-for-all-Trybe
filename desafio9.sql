-- DESAFIO 9: Crie uma procedure chamada albuns_do_artista que recebe como parâmetro o nome de uma pessoa artista e em retorno deve exibir as seguintes colunas:

DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN pessoa_artista VARCHAR(40))
BEGIN

  SELECT
    artista `artista`,
    album_nome `album`
  FROM SpotifyClone.ARTISTA A
  INNER JOIN SpotifyClone.ALBUM B
  ON B.artista_id = A.artista_id
  WHERE A.artista = pessoa_artista;

END$$

DELIMITER ;
