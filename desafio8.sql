USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
    BEFORE DELETE ON `user`
    FOR EACH ROW
BEGIN
DELETE FROM user_following WHERE user_id = OLD.user_id;
DELETE FROM play_history WHERE user_id = OLD.user_id;
END $$
DELIMITER ;
