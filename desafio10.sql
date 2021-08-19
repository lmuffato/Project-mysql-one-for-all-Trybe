DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id_user INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE total_music INT;
    SELECT COUNT(*) FROM SpotifyClone.history_play AS hp
    WHERE hp.user_id = id_user INTO total_music;
    RETURN total_music;
END $$

DELIMITER ;
