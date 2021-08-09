DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
  BEFORE DELETE ON SpotifyClone.Users
  FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.Followed_artists
  WHERE user_id = OLD.user_id;
  DELETE FROM SpotifyClone.User_history
  WHERE user_id = OLD.user_id;
END $$
DELIMITER ;
