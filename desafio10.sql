USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(userId INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE user_repro_quant INT;
SELECT
  COUNT(SONG_ID)
FROM SpotifyClone.songs_played
WHERE `USER_ID` = userId
INTO user_repro_quant;
RETURN user_repro_quant;
END $$

DELIMITER ;
