DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_musicas INT;
SELECT COUNT(*) FROM SpotifyClone.ReproductionHistory
WHERE UserID = id
INTO quantidade_musicas;
RETURN quantidade_musicas;
END $$ 
DELIMITER ;
