-- https://www.mysqltutorial.org/mysql-stored-function/
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(
    user_id INT
)
RETURNS INT
READS SQL DATA
BEGIN
  DECLARE number_of_songs INT DEFAULT 0;
  SELECT
      COUNT(song_id)
    FROM
      SpotifyClone.history AS h
    WHERE h.user_id = user_id
    INTO number_of_songs;
  
  RETURN number_of_songs;
END $$

DELIMITER ;
