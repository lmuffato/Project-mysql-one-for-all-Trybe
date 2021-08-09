DELIMITER $M
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuario
  FOR EACH ROW
BEGIN
  DELETE FROM artistas_seguindo WHERE usuario_id = OLD.usuario_id;
  DELETE FROM historico_reproducoes WHERE usuario_id = OLD.usuario_id;
END $M DELIMITER ;
