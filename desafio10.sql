USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (UserID INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quantidade INT;
  SELECT COUNT(*) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_reproducoes
WHERE usuario_id = UserID INTO quantidade;
RETURN quantidade;
END $$

DELIMITER ;
