DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade INT; 
SELECT count(historico_id)
FROM SpotifyClone.Historico AS h
INNER JOIN SpotifyClone.Usuarios AS a
ON h.usuario_id = a.usuario_id
WHERE a.usuario_id = id INTO quantidade;
RETURN quantidade;
END $$

DELIMITER ;
