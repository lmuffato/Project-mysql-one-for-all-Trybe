DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.user
FOR EACH ROW
BEGIN 
DELETE FROM SpotifyClone.historico WHERE user_id = OLD.user_id;
DELETE FROM SpotifyClone.Follow WHERE user_id = OLD.user_id;
END $$
DELETE FROM SpotifyClone.user WHERE user_id=1;
