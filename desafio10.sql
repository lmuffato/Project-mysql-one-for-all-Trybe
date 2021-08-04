DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(usuario_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_musicas INT;
SELECT COUNT(*)
FROM SpotifyClone.historico_de_reproducoes AS hr
INNER JOIN SpotifyClone.usuarios AS u
ON u.usuario_id = hr.usuario_id
WHERE u.usuario_id = usuario_id 
INTO quantidade_musicas;
RETURN quantidade_musicas;
END $$
DELIMITER ;
