USE SpotifyClone;

DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
  BEFORE DELETE ON 
    SpotifyClone.USUARIO
  FOR EACH ROW
BEGIN
  DELETE FROM 
    SpotifyClone.HISTORICO_REPRODUCAO
  WHERE 
    usuario_id = OLD.usuario_id;

  DELETE FROM
    SpotifyClone.SEGUINDO_ARTISTAS
  WHERE 
    usuario_id = OLD.usuario_id;
END $$

DELIMITER ;
