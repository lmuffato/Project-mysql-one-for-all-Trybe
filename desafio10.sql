DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(indice int)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE qtd_musicas INT;
	SELECT COUNT(*) FROM SpotifyClone.historico WHERE usuario_id=indice INTO qtd_musicas;
	RETURN qtd_musicas;
END $$

DELIMITER ;
