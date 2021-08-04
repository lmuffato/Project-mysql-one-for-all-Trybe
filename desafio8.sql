DELIMITER $$

CREATE TRIGGER `SpotifyClone`.trigger_usuario_delete
BEFORE DELETE ON `SpotifyClone`.users
FOR EACH ROW
BEGIN
  DELETE FROM `SpotifyClone`.songs_users WHERE `user_id` = OLD.user_id;
  DELETE FROM `SpotifyClone`.users_artists WHERE `user_id` = OLD.user_id;
END $$

DELIMITER ;
