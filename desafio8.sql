DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuario
FOR EACH ROW
BEGIN
DELETE FROM seguindoArtistas WHERE usuario_id = OLD.usuario_id;
DELETE FROM historicoReproducoes WHERE usuario_id = OLD.usuario_id;
END $$
DELIMITER ;
