DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total_songs INT;
  SELECT
    COUNT(*)
  FROM SpotifyClone.songs_playback_history AS playhist
  WHERE playhist.user_id = id
    INTO total_songs;
  RETURN total_songs;
END $$

DELIMITER ;
