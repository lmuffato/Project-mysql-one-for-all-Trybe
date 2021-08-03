DELIMITER $$
CREATE TRIGGER trigger_usuario_delete BEFORE DELETE
ON users
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.followers WHERE user_id_fk = OLD.user_id;
DELETE FROM SpotifyClone.rep_history WHERE user_id_fk = OLD.user_id;
END
$$ DELIMITER ;
