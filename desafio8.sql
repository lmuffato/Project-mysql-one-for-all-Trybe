USE SpotifyClone;

DROP TRIGGER IF EXISTS trigger_usuario_delete;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
    BEFORE DELETE ON usuarios
    FOR EACH ROW
BEGIN
    DELETE FROM historicoDeReproducoes
    WHERE OLD.usuario_id = usuario_id;
    
    DELETE FROM seguindoArtistas
    WHERE OLD.usuario_id = usuario_id;
END $$
DELIMITER ;
