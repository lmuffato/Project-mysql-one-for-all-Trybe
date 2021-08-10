DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(indice int)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE count_songs INT;
  SELECT COUNT(*) FROM SpotifyClone.listening_history WHERE user_id=indice INTO count_songs;
  RETURN count_songs;
END $$

DELIMITER ;
