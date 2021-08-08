USE SpotifyClone;
DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON users
FOR EACH ROW
BEGIN
DELETE FROM artist_followers WHERE user_id = OLD.user_id;
DELETE FROM just_heard WHERE user_id = OLD.user_id;
END $$

DELIMITER ;
