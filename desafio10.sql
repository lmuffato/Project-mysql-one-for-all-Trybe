DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total_musicas INT;
  SELECT
    COUNT(*)
  FROM SpotifyClone.HISTORICO_REPRODUCAO AS HR
  WHERE HR.usuario_id = id
    INTO total_musicas;
  RETURN total_musicas;
END $$

DELIMITER ;
