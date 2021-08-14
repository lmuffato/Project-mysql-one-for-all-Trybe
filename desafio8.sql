DELIMITER $$

CREATE TRIGGER SpotifyClone.trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.users FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.playback_history
  WHERE user_id = OLD.id;
  DELETE FROM SpotifyClone.followers
  WHERE user_id = OLD.id;
END $$

DELIMITER ;
