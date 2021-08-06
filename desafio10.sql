DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE qt_musics INT;
SELECT COUNT(user_id)
FROM SpotifyClone.`history` 
WHERE user_id = id INTO qt_musics;
RETURN qt_musics;
END $$

DELIMITER ;
