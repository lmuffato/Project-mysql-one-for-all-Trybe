DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(search_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_count INT;
SELECT COUNT(*) AS quantidade_musicas_no_historico FROM users_history WHERE user_id = search_id INTO total_count;
RETURN total_count;
END $$

DELIMITER ;
