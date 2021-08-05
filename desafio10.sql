USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(ID INT)
RETURNS INT READS SQL DATA BEGIN
DECLARE total_de_musicas INT;
SELECT COUNT(userID) FROM listeningHistory
WHERE userID = ID INTO total_de_musicas;
RETURN total_de_musicas;
END $$

DELIMITER ; 
