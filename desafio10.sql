DELIMITER $$

CREATE FUNCTION `quantidade_musicas_no_historico` (id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE qt INT;
SELECT COUNT(*) AS `quantidade_musicas_no_historico`
FROM SpotifyClone.played
WHERE user_id = id INTO qt;
RETURN qt;
END $$

DELIMITER ;
