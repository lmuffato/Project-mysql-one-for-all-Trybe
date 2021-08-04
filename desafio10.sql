DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(idUser INT)
RETURNS INT READS SQL DATA
BEGIN 
  DECLARE sum_music INT;
  SELECT COUNT(*) FROM 
  SpotifyClone.historic_musics
  WHERE user_id = idUser INTO sum_music;
  RETURN sum_music;
END $$

DELIMITER ;
