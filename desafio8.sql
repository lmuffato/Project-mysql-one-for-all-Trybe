DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
  BEFORE DELETE ON SpotifyClone.usuarios
  FOR EACH NOW
BEGIN
  DELETE FROM SpotifyClone.historico WHERE usuario_id = OLD.usuario_id;
  DELETE FROM SpotifyClone.seguindo WHERE usuario_id = OLD.usuario_id;
END $$

DELIMITER ;
