DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user_id INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total_musicas INT;
  SELECT COUNT(*) 
  FROM historico_de_reproducoes
  WHERE usuario_id = user_id
  INTO total_musicas;
  RETURN total_musicas;
END $$

DELIMITER ;
