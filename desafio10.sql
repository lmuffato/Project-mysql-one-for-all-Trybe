DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE user_reproductions INT;
SELECT COUNT(user_id)
    FROM SpotifyClone.reproductions
    WHERE user_id = id
    INTO user_reproductions;
    RETURN user_reproductions;
END $$

DELIMITER ;
