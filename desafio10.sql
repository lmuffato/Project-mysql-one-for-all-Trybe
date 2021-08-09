DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (user_id VARCHAR(20))
RETURNS INT READS SQL DATA
BEGIN DECLARE music_total INT;
SELECT
  COUNT(*) INTO music_total
FROM
  SpotifyClone.historico_de_reproducoes h
WHERE
  h.usuario_id = user_id;
RETURN music_total;
END $$

DELIMITER ;
