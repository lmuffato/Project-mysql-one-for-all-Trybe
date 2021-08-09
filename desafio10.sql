DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(userID INT)
RETURNS INT READS SQL DATA
BEGIN DECLARE total_songs INT;
SELECT COUNT(*)
FROM SpotifyClone.listening_history
WHERE user_id=userID INTO total_songs;
RETURN total_songs;
END $$

DELIMITER ;
