DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.users
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.followers
WHERE (user_id = OLD.user_id);
DELETE FROM SpotifyClone.playback_history
WHERE (user_id = OLD.user_id);
END $$
DELIMITER ;

DELETE FROM SpotifyClone.users WHERE (username = 'Thati');
