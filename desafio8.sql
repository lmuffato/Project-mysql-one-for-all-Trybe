USE SpotifyClone;
DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON user
FOR EACH ROW
BEGIN
DELETE FROM artist_follows WHERE user_id = OLD.user_id;
DELETE FROM history WHERE user_id = OLD.user_id;
END $$
DELIMITER ;
