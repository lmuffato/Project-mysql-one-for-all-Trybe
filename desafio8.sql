DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.Users
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.History WHERE OLD.user_id = user_id;
DELETE FROM SpotifyClone.Following WHERE OLD.user_id = user_id;
END $$

DELIMITER ;
