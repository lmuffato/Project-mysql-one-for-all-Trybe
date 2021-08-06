-- https://www.mysqltutorial.org/mysql-triggers/mysql-before-delete-trigger/
DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
    BEFORE DELETE
    ON SpotifyClone.user FOR EACH ROW
BEGIN
    DELETE FROM SpotifyClone.history WHERE user_id = OLD.user_id;
    DELETE FROM SpotifyClone.following WHERE user_id = OLD.user_id;
END$$    

DELIMITER ;
