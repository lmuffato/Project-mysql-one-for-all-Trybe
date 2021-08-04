DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(usuario INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_musica INT;
SELECT COUNT(hr.cancao_id)
FROM SpotifyClone.Historico_de_reproducoes AS hr
INNER JOIN SpotifyClone.Usuarios AS u
ON u.usuario_id = hr.usuario_id
WHERE u.usuario_id = usuario 
INTO total_musica;
RETURN total_musica;
END $$
DELIMITER ;
