USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(userId INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE likesCount INT;
    SELECT COUNT(*)
    FROM user_history AS UH
    WHERE UH.user_id = userId INTO likesCount;
    RETURN likesCount;
END $$

DELIMITER ;
