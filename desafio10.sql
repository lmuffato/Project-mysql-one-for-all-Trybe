USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quanti_musicas INT;
SELECT COUNT(HR.usuario_id) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.historico_reproducoes HR
WHERE usuario_id = id INTO quanti_musicas;
RETURN quanti_musicas;
END $$

DELIMITER ;
