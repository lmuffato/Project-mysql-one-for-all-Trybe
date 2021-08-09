USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(userID INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE songsListened INT;
  SELECT
    COUNT(song_id)
  FROM SpotifyClone.PlayedSongs AS ps
  WHERE ps.user_id = userID
  INTO songsListened;
  RETURN songsListened;
END $$

DELIMITER ;
