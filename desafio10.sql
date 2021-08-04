USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(idUser INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE HIST INT;
  SELECT COUNT(*) AS 'quantidade_musicas_no_historico' FROM history
  WHERE id_user = idUser
  GROUP BY id_user
  INTO HIST;
  RETURN HIST;
END $$

DELIMITER ;
