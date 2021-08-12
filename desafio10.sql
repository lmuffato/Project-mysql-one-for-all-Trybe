DELIMITER $$

CREATE FUNCTION SpotifyClone.quantidade_musicas_no_historico (user_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_musicas_no_historico INT ;
SELECT COUNT(1) AS quantidade_musicas_no_historico
FROM SpotifyClone.History AS h
WHERE h.user_id = user_id INTO quantidade_musicas_no_historico;
RETURN quantidade_musicas_no_historico;
END $$

DELIMITER ;
