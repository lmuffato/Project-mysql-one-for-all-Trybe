DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(50))
BEGIN
  SELECT
    A.artista_nome AS `artista`,
    AL.nome_album AS `album`
  FROM
    SpotifyClone.ARTISTA AS A
      INNER JOIN
    SpotifyClone.ALBUM AS AL ON AL.artista_id = A.artista_id
  WHERE A.artista_nome = nome
  ORDER BY `album`;
END $$

DELIMITER ;
