DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id TINYINT)
RETURNS DOUBLE READS SQL DATA
BEGIN
DECLARE resp DOUBLE;
SELECT COUNT(musicas_id) FROM SpotifyClone.historico_reproducao
WHERE usuario_id = id
INTO resp;
RETURN resp;
END $$

DELIMITER ;
