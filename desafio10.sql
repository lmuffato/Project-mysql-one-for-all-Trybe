/* Desafio 10 - Crie uma function chamada de quantidade_musicas_no_historico
que exibe a quantidade de músicas que estão presentes atualmente no histórico
de reprodução de uma pessoa usuária. Ao receber o código identificador da
pessoa, exiba a quantidade de canções em seu histórico de reprodução.

Confirme a execução correta da function, chamando-a e passando o id para a
pessoa usuária com o nome igual a "Bill". */
-- USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(userId INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quantidade INT;
  SELECT COUNT(*) FROM historic WHERE user_id = userId
  INTO quantidade;
  RETURN quantidade;  
END $$

DELIMITER ;

-- SELECT quantidade_musicas_no_historico(3);
