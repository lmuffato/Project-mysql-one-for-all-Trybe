USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE retorno INT;
SELECT
COUNT(*)
FROM SpotifyClone.play_history
WHERE play_history.user_id = id INTO retorno;
RETURN retorno;
END $$

DELIMITER ;
