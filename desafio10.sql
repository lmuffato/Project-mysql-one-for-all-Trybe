DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(usuarioID INT)
RETURNS INT READS SQL DATA
BEGIN 
  DECLARE total_musica INT;
  SELECT COUNT(cancao_id) FROM SpotifyClone.historico_reproducao
  WHERE usuario_id = usuarioID
  INTO total_musica;
  RETURN total_musica;
END $$

DELIMITER ;

SELECT quantidade_musicas_no_historico(1);
