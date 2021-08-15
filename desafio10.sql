USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE musicRecord INT;
SELECT COUNT(his.usuario_ID)
FROM SpotifyClone.historico_de_reproducoes AS his
INNER JOIN SpotifyClone.usuarios AS users
ON his.usuario_ID = users.usuario_ID
WHERE his.usuario_ID = id INTO musicRecord;
RETURN musicRecord;
END $$

DELIMITER ;

