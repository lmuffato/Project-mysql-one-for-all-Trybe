USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.users
FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.following WHERE user_id = OLD.user_id;
  DELETE FROM SpotifyClone.historic WHERE user_id = OLD.user_id;
END $$

DELIMITER ;
