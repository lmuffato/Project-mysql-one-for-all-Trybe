DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(userId INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE playTotal INT;
    SELECT COUNT(*)
FROM history AS history
JOIN users AS users
ON users.user_id = history.user_id
WHERE users.user_id = userId
INTO playTotal;
    RETURN playTotal;
END $$

DELIMITER ;
