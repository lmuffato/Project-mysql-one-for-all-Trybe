DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
  BEFORE DELETE ON SpotifyClone.user
  FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.followed_artist
  WHERE USER_ID = OLD.USER_ID;
  DELETE FROM SpotifyClone.songs_played
  WHERE USER_ID = OLD.USER_ID;
END $$
DELIMITER ;
