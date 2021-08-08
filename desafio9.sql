-- SELECT * FROM SpotifyClone.Album;
-- SELECT * FROM SpotifyClone.Artista;

-- SELECT
-- ART.nome_artista AS `artista`,
-- ALB.nome_album AS `album`
-- FROM SpotifyClone.Album AS ALB
-- INNER JOIN SpotifyClone.Artista AS ART ON ART.artista_ID = ALB.artista_ID
-- WHERE ART.nome_artista = 'Walter Phoenix'
-- ORDER BY `album`;

-- USE SpotifyClone;

DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN name_artista VARCHAR(50))
BEGIN
  SELECT
  ART.nome_artista AS `artista`,
  ALB.nome_album AS `album`
  FROM SpotifyClone.Album AS ALB
  INNER JOIN SpotifyClone.Artista AS ART ON ART.artista_ID = ALB.artista_ID
  WHERE ART.nome_artista = name_artista
  ORDER BY `album`;
END $$
DELIMITER ;

-- CALL albuns_do_artista('Walter Phoenix');
