DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user_id int)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidadeMusicasHistorico INT;
    
SELECT COUNT(cancao_id) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.historico_reproducoes
WHERE usuario_id = user_id
    
INTO quantidadeMusicasHistorico;
RETURN quantidadeMusicasHistorico;
END $$

DELIMITER ;
