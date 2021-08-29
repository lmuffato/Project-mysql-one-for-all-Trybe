DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuario
FOR EACH ROW
BEGIN
DELETE FROM usuario_cancao WHERE OLD.usuario_id = usuario_cancao.usuario_id;
DELETE FROM usuario_artista WHERE OLD.usuario_id = usuario_artista.usuario_id;
END $$

DELIMITER $$ ;
