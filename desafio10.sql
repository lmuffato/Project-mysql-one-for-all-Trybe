DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantity INT;
SELECT  COUNT(h.single_id) FROM SpotifyClone.Users AS u
INNER JOIN SpotifyClone.History AS h
ON h.user_id = u.user_id
WHERE u.user_id = user_id
GROUP BY u.username
INTO quantity;
RETURN quantity;
END $$
DELIMITER ;
