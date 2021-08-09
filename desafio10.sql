DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (u_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_musicas_no_historico INT ;
SELECT COUNT(1) AS quantidade_musicas_no_historico
FROM SpotifyClone.Historico AS h
WHERE h.Usuario_id = u_id INTO quantidade_musicas_no_historico;
RETURN quantidade_musicas_no_historico;
END $$

DELIMITER ;
