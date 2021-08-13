-- challenge 10;

USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(pessoa_usuaria INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE usuario INT;
  SELECT COUNT(*) FROM SpotifyClone.historico_reproducoes AS historico
  WHERE usuario_id=pessoa_usuaria INTO usuario;
  RETURN usuario;
END $$

DELIMITER ;
