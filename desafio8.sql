DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
    BEFORE DELETE ON users
    FOR EACH ROW
BEGIN
    DELETE FROM SpotifyClone.reproduction_history AS r
    WHERE OLD.user_id = r.user_id;
    DELETE FROM SpotifyClone.following AS f
    WHERE OLD.user_id = f.user_id;
END $$
DELIMITER ;
