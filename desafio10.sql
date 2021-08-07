DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(usuario_selected INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE  quant_musicas INT;
    SELECT COUNT(cancao_id) AS quantidade_musicas_no_historico
    FROM SpotifyClone.historico_reproducao
    WHERE usuario_id = usuario_selected INTO quant_musicas;
    RETURN quant_musicas;
END $$

DELIMITER ;
