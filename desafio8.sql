DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.users
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.follow_artists WHERE user_id = OLD.user_id;
DELETE FROM SpotifyClone.history_play WHERE user_id = OLD.user_id;
END $$
DELIMITER ;
