DELIMITER $$

CREATE FUNCTION SpotifyClone.quantidade_musicas_no_historico(id_user INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE qty INT;
  SELECT COUNT(*) AS `quantidade_musicas_no_historico`
  FROM SpotifyClone.playback_history
  WHERE user_id = id_user
  INTO qty;
  RETURN qty;
END $$

DELIMITER ;
