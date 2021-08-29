DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.users
FOR EACH ROW
BEGIN
    DELETE FROM SpotifyClone.songs_playback_history WHERE user_id = OLD.user_id;
    DELETE FROM SpotifyClone.users_artists_following WHERE user_id = OLD.user_id;
END $$

DELIMITER ;
