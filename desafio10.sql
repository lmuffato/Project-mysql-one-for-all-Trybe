DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(idUser INT)
RETURNS INT READS SQL DATA 
BEGIN
SELECT COUNT(hr.usuario_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_reproducoes AS hr
INNER JOIN SpotifyClone.usuarios AS u
ON hr.usuario_id = u.usuario_id
WHERE u.usuario_id = idUser;
END $$
DELIMITER ;
