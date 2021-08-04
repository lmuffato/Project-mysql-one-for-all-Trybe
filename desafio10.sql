USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user_id INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total_music INT;
  SELECT 
    COUNT(*) 
  FROM SpotifyClone.reproductions_history
  WHERE users_id = user_id INTO total_music;
  RETURN total_music;
END $$

DELIMITER ;
