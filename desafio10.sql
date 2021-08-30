DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(artist VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE musicas_total INT;
	SELECT COUNT(h.song_id)
	FROM SpotifyClone.users AS u
	inner join SpotifyClone.reproduction_history AS h
	ON u.user_id = h.user_id
	WHERE u.user_name = artist
	GROUP BY u.user_name INTO musicas_total;
  RETURN musicas_total;
END $$

DELIMITER ;
