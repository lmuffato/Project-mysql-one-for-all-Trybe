DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id_usuario INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE musics_on_history INT;
SELECT COUNT(p.music_id)
FROM SpotifyClone.playback_history AS p
WHERE p.user_id = id_usuario
INTO musics_on_history;
RETURN musics_on_history;
END $$

DELIMITER ;

SELECT quantidade_musicas_no_historico(3);
