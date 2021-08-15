USE SpotifyClone;
DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON SpotifyClone.usuarios
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.seguindo WHERE usuario_ID = OLD.usuario_ID;
DELETE FROM SpotifyClone.historico_de_reproducoes WHERE usuario_ID = OLD.usuario_ID;
END $$
DELIMITER ;
