USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(nome_usuario VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtd_musica INT;
SELECT COUNT(h.usuario_id) FROM historico_reproducoes h
INNER JOIN usuarios u ON u.usuario_id = h.usuario_id
WHERE u.nome = nome_usuario
INTO qtd_musica;
RETURN qtd_musica;
END $$

DELIMITER ;
