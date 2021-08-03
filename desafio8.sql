USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
    BEFORE DELETE ON users
    FOR EACH ROW
BEGIN
    DELETE FROM user_history WHERE user_history.user_id = OLD.id;
    DELETE FROM user_likes WHERE user_likes.user_id = OLD.id;
END $$
DELIMITER ;
