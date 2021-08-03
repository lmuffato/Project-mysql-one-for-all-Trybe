DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(user_id VARCHAR(10))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantity INT;
SELECT COUNT(*) INTO quantity FROM SpotifyClone.`history` WHERE user_id_fk = user_id;
return quantity;
END
$$ DELIMITER ;