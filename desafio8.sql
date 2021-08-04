USE SpotifyClone;
DELIMITER &&
CREATE TRIGGER trigger_usuario_delete
  BEFORE DELETE ON users
  FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.followers
  WHERE users_id = OLD.users_id;
  DELETE FROM SpotifyClone.reproductions_history
  WHERE users_id = OLD.users_id;
END &&
DELIMITER ;
