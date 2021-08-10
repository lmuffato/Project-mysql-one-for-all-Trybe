DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON SpotifyClone.usuarios FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.seguindo AS t1 WHERE t1.usuario_id = OLD.usuario_id
DELETE FROM SpotifyClone.historico AS t3 WHERE t3.usuario_id = OLD.usuario_id;
END $$
DELIMITER;
