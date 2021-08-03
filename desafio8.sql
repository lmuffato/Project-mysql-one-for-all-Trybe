DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.Usuarios
FOR EACH ROW
BEGIN
    DELETE FROM SpotifyClone.Historico WHERE usuario_id = OLD.usuario_id;
    DELETE FROM SpotifyClone.Seguindo WHERE usuario_id = OLD.usuario_id;
END $$

DELIMITER ;
