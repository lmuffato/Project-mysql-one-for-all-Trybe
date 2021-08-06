-- Crie uma function chamada de quantidade_musicas_no_historico que exibe a quantidade de músicas que 
-- estão presentes atualmente no histórico de reprodução de uma pessoa usuária. Ao receber o código 
-- identificador da pessoa, exiba a quantidade de canções em seu histórico de reprodução.

USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(userId VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantity INT;
SELECT COUNT(*)
FROM playback_history
WHERE user_id like userId
INTO quantity;
RETURN quantity;
END $$

DELIMITER ;
