DELIMITER $$

CREATE FUNCTION `quantidade_musicas_no_historico`(id INT)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE `number_of_songs` INT;
    SELECT COUNT(*) FROM SpotifyClone.history WHERE user_id = id
    INTO `number_of_songs`;
    RETURN `number_of_songs`;
END$$

DELIMITER ;
