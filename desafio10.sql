DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(usuario_id INT)
 RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(*)
FROM SpotifyClone.historico AS h
WHERE h.usuario_id = usuario_id INTO total;
RETURN total;
END $$
DELIMITER ;