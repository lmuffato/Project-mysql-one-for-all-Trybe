DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
	BEFORE DELETE ON SpotifyClone.users
    FOR EACH ROW
BEGIN 
	DELETE FROM SpotifyClone.historical_reproduction
    WHERE OLD.user_id = user_id;

    DELETE FROM SpotifyClone.following_artists
    WHERE OLD.user_id = user_id;
END $$

DELIMITER ;
