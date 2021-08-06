DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE resp INT;
SELECT COUNT(musicas_id) FROM SpotifyClone.historico_reproducao
WHERE usuario_id = id
INTO resp;
RETURN resp;
END $$

DELIMITER ;
