DELIMITER $$

  CREATE FUNCTION `SpotifyClone`.quantidade_musicas_no_historico (`user_id` INT)
  RETURNS INT READS SQL DATA
  BEGIN
    DECLARE `quantity` INT;
    SELECT COUNT(`songs_users`.user_id) AS `quantidade_musicas_no_historico`
    FROM `SpotifyClone`.songs_users AS `songs_users`
    WHERE `songs_users`.user_id = `user_id` INTO `quantity`;
    RETURN `quantity`;
  END $$

DELIMITER ;
