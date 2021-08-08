USE SpotifyClone;
DELIMITER &&
CREATE TRIGGER trigger_usuario_delete
  BEFORE DELETE ON USERS
  FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.FOLLOW_ARTIST
  WHERE user_id = OLD.user_id;
  DELETE FROM SpotifyClone.PLAYBACK_HISTORY
  WHERE user_id = OLD.user_id;
END &&
DELIMITER ;
