USE SpotifyClone;

DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id_usuario INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE amount INT;
SELECT COUNT(song_id)
FROM user_play_history
WHERE user_id = id_usuario
INTO amount;
RETURN amount;
END $$
DELIMITER ;

