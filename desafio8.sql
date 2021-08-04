USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
	AFTER DELETE ON user
    FOR EACH ROW
BEGIN
	DELETE FROM artist WHERE id.artist = OLD.id_user;
    DELETE FROM history WHERE id.artist = OLD.id_user;
END $$

DELIMITER ;
