DELIMITER $$

CREATE FUNCTION SpotifyClone.quantidade_musicas_no_historico(usuario_nome VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_musicas_no_historico INT;
SELECT COUNT(1) 
FROM SpotifyClone.Historico AS h
INNER JOIN SpotifyClone.Usuario AS u ON h.Usuario_id = u.Usuario_id
WHERE u.Usuario LIKE usuario_nome INTO quantidade_musicas_no_historico;
RETURN quantidade_musicas_no_historico;
END $$

DELIMITER ;
