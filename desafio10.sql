USE SpotifyClone;

DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(user INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quant INT;
SELECT
  COUNT(h.song_id)
FROM SpotifyClone.historic AS h
WHERE h.user_id = user
INTO quant;
RETURN quant;
END $$
DELIMITER ;
