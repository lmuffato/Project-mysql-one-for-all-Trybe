DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.users
    FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.followers WHERE OLD.user_id = user_id;
    DELETE FROM SpotifyClone.reproductions WHERE OLD.user_id = user_id;
END $$

DELIMITER ;
