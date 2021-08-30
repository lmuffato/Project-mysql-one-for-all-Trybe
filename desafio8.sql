DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.users
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.played WHERE OLD.user_id = user_id;
DELETE FROM SpotifyClone.social WHERE OLD.user_id = user_id;
END $$

DELIMITER ;
