DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuarios
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.historico WHERE user_id = OLD.user_id;
DELETE FROM SpotifyClone.seguidores WHERE user_id = OLD.user_id;
END $$
DELIMITER ;
