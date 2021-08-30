DELIMITER //

CREATE FUNCTION quantidade_musicas_no_historico(id_usuario INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE HistoricoMusical INT;
SELECT COUNT(hr.cancao_id)
FROM HistoricoReproducoes hr
WHERE hr.usuario_id = id_usuario
INTO HistoricoMusical;
RETURN HistoricoMusical;
END //

DELIMITER ;

SELECT quantidade_musicas_no_historico(3);
