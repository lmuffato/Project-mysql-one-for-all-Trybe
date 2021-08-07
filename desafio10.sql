USE SpotifyClone; -- obrigatório para criar a função no banco correto
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(userId INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE totalMusicas INT;
SELECT COUNT(cancao_id) 
FROM SpotifyClone.historico_de_reproducoes
WHERE usuario_id = userId
INTO totalMusicas ;
RETURN totalMusicas;

END $$

DELIMITER ;
