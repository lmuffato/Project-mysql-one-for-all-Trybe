DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.Usuario
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.Historico WHERE OLD.Usuario_id = Usuario_id;
DELETE FROM SpotifyClone.Seguindo WHERE OLD.Usuario_id = Usuario_id;
END $$

DELIMITER ;
