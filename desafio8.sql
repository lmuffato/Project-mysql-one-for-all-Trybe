USE SpotifyClone;

DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON usuarios
FOR EACH ROW
BEGIN
DELETE FROM historico_reproduces WHERE OLD.usuario_id = historico_reproduces.usuario_id;
DELETE FROM seguindo_artistas WHERE OLD.usuario_id = seguindo_artistas.usuario_id;
END $$

DELIMITER ;
