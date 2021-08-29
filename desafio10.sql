DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(usuario_id int)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(*)
FROM usuario_cancao
WHERE usuario_cancao.usuario_id = usuario_id INTO total;
RETURN total;
END $$

DELIMITER ;