USE SpotifyClone;

DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuarios
FOR EACH ROW
BEGIN
DELETE FROM historico_reproducoes WHERE usuarios.usuario_id = historico_reproducoes.usuario_id;
DELETE FROM seguindo_artistas WHERE usuarios.usuario_id = seguindo_artistas.usuario_id;
END $$

DELIMITER ;
