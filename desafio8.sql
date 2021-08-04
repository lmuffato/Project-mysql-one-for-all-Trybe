USE SpotifyClone;

DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.user
FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.songs_played WHERE OLD.USER_ID = USER_ID;
  DELETE FROM SpotifyClone.followed_artist WHERE OLD.USER_ID = USER_ID;
END $$

DELIMITER ;
