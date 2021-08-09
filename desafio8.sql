USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.user_info
FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.follow WHERE user_id = OLD.user_id;
  DELETE FROM SpotifyClone.history_user WHERE user_id = OLD.user_id;
END
DELIMITER $$ ;

