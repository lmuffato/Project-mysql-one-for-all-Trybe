USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION SpotifyClone.quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE total_historico_musicas INT;
    SELECT COUNT(*) FROM SpotifyClone.reproducoes
    WHERE usuario_id = id INTO total_historico_musicas;
    RETURN total_historico_musicas;
END $$

DELIMITER ;

SELECT quantidade_musicas_no_historico(3);
