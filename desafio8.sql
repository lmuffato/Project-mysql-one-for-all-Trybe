DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
    BEFORE DELETE ON SpotifyClone.usuarios
    FOR EACH ROW
BEGIN
    DELETE FROM SpotifyClone.usuario_artista
    WHERE usuario_id = OLD.usuario_id;
    DELETE FROM SpotifyClone.usuario_reproducao
    WHERE usuario_id = OLD.usuario_id;
END $$
DELIMITER ;
