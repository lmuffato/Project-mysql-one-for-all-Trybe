USE SpotifyClone;

DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
  BEFORE DELETE ON 
    SpotifyClone.USUARIOS
  FOR EACH ROW
BEGIN
  DELETE FROM 
    SpotifyClone.USUARIOS_REPRODUCOES
  WHERE 
    usuario_id = OLD.usuario_id;

  DELETE FROM
    SpotifyClone.USUARIOS_SEGUIDAS
  WHERE 
    usuario_id = OLD.usuario_id;
END $$

DELIMITER ;
