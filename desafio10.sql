-- DROP FUNCTION quantidade_musicas_no_historico;

DELIMITER $$ 

CREATE FUNCTION quantidade_musicas_no_historico(id_usuario INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE valor_retornado INT;
SELECT 
    COUNT(user_id)
FROM
    SpotifyClone.reproduction_history
WHERE
    user_id = id_usuario
GROUP BY user_id INTO valor_retornado
;
RETURN valor_retornado;
END $$

DELIMITER ;

-- SELECT quantidade_musicas_no_historico(3)
