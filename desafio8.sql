-- USE SpotifyClone;

DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
  BEFORE DELETE ON SpotifyClone.usuarios
  FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.historico_reproducoes AS h WHERE h.usuario_id=OLD.usuario_id;
  DELETE FROM SpotifyClone.seguindo_artistas AS s WHERE s.usuario_id=OLD.usuario_id;
END $$

DELIMITER ;

DELETE FROM SpotifyClone.usuarios WHERE usuario_id = 1;
