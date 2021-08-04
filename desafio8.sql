DELIMITER $$
CREATE TRIGGER SpotifyClone.trigger_usuario_delete
    BEFORE DELETE ON SpotifyClone.users
    FOR EACH ROW
BEGIN
    DELETE FROM SpotifyClone.followed_artists
    WHERE OLD.user_id = user_id;
    DELETE FROM SpotifyClone.listened_songs
    WHERE OLD.user_id = user_id;
END $$
DELIMITER ;
