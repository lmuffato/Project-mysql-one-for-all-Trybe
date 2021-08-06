USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.Users
FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.FollowedArtist WHERE user_id = OLD.user_id;
  DELETE FROM SpotifyClone.PlayedSongs WHERE user_id = OLD.user_id;
END $$

DELIMITER ;
