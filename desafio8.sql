USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
    AFTER DELETE ON `user`
    FOR EACH ROW
BEGIN
DELETE FROM user_following WHERE user_id = 1;
DELETE FROM play_history WHERE user_id = 1;
END $$
DELIMITER ;
