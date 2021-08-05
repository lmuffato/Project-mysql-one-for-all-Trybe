DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(idUser int)
RETURNS INT READS SQL DATA
BEGIN
DECLARE played_musics INT;
SELECT 
COUNT(*) FROM SpotifyClone.HISTORY_REPRODUCTIONS
WHERE idUser = user_id INTO played_musics;
RETURN played_musics;
END $$

DELIMITER ;
