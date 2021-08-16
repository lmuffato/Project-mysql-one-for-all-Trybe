DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id_usuario VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade INT;
SELECT COUNT(*) INTO quantidade FROM SpotifyClone.historico WHERE usuario_id = id_usuario;
RETURN quantidade;
END $$

DELIMITER ;