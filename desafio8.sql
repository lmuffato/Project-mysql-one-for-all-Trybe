DELIMITER //

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuarios
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.FaArtistas
WHERE (usuario_id = OLD.usuario_id);
DELETE FROM SpotifyClone.HistoricoReproducoes
WHERE (usuario_id = OLD.usuario_id);
END //

DELIMITER ;

DELETE FROM SpotifyClone.usuarios WHERE (usuario_nome = 'Thati');
