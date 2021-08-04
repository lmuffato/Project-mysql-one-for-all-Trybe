USE SpotifyClone;
DELIMITER $$;

CREATE FUNCTION quantidade_musicas_no_historico(selectedID INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE user_id INT;
SELECT COUNT(h.musica_id)
FROM SpotifyClone.historico_de_musicas AS h
WHERE h.usuario_id = selectedID
INTO user_id;
RETURN user_id;
END $$

DELIMITER ;
