DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(userId int)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE music_quantity INT;
  SELECT COUNT(*)
  FROM SpotifyClone.User_history AS UH
  WHERE UH.user_id = userId INTO music_quantity;
  RETURN music_quantity;
END $$
DELIMITER ;
