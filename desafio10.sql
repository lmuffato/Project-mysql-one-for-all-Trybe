USE SpotifyClone; -- obrigatório para criar a função no banco correto
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE qtd INT;
  SELECT COUNT(*)
  FROM reproductions
  WHERE reproductions.user_id = id INTO qtd;
  RETURN qtd;
END $$

DELIMITER ;
