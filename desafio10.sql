DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(userId INT)
RETURNS INT
READS SQL DATA
BEGIN
DECLARE user_repro_quant INT;
SELECT
  COUNT(SONG_ID)
FROM SpotifyClone.songs_played AS hr
WHERE hr.USER_ID IN (
  SELECT USER_ID
  FROM SpotifyClone.user AS u
  WHERE u.USER_ID = hr.USER_ID
  AND u.USER_ID = userId
)
INTO user_repro_quant;
RETURN user_repro_quant;
END $$

DELIMITER ;
