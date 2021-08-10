DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuarios FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.seguindo WHERE usuario_id = OLD.usuario_id
DELETE FROM SpotifyClone.historico AS usuario_id = OLD.usuario_id;
END $$
DELIMITER;
