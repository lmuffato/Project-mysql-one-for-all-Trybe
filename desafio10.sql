USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtd_musica INT;
SELECT COUNT(usuario_id) FROM historico_reproducoes
WHERE usuario_id = id
INTO qtd_musica;
RETURN qtd_musica;
END $$

DELIMITER ;
