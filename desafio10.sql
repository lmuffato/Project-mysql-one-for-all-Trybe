USE SpotifyClone;

DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(u_id int)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total_ int;
  SELECT
    COUNT(mh.user_id)
  FROM SpotifyClone.music_history AS mh
  INNER JOIN SpotifyClone.users AS u
  ON
    mh.user_id = u.user_id
    AND
    u.user_id = u_id
  GROUP BY u.user_id
  INTO total_;
  RETURN total_;
END $$
DELIMITER ;
