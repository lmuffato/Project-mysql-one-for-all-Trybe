DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(chosenUser VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE music_total INT;
    SELECT COUNT(*)
    FROM SpotifyClone.usuario_reproducao AS ur
    LEFT JOIN SpotifyClone.usuarios AS u
    ON u.usuario_id = ur.usuario_id
    WHERE u.usuario = chosenUser INTO music_total;
    RETURN music_total;
END $$

DELIMITER ;
