USE SpotifyClone;

DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
  BEFORE DELETE ON SpotifyClone.usuarios
  FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.seguindo
  WHERE OLD.usuario_id = usuario_id;

  DELETE FROM SpotifyClone.reproducoes
  WHERE OLD.usuario_id = usuario_id;
END $$
