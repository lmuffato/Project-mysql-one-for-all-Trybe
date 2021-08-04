DELIMITER $$
CREATE TRIGGER trigger_perfil_delete
    BEFORE DELETE ON SpotifyClone.usuario
    FOR EACH ROW
BEGIN
    DELETE FROM SpotifyClone.listaReproducao WHERE usuario_id = OLD.usuario_id;
    DELETE FROM SpotifyClone.seguindo WHERE usuario_id = OLD.usuario_id;
END $$
DELIMITER ;
