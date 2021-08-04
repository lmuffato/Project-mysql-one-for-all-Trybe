DELIMITER $$
  CREATE TRIGGER trigger_usuario_delete
  BEFORE DELETE ON usuarios
  FOR EACH ROW
  BEGIN
    DELETE FROM historico_de_reproducoes WHERE usuario_id = old.usuario_id;
    DELETE FROM seguindo_artistas WHERE usuario_id = old.usuario_id;
  END $$
DELIMITER ;
