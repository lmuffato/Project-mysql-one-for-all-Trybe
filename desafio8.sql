-- https://www.mysqltutorial.org/mysql-triggers/mysql-before-delete-trigger/
-- FEITO COM AUXILIO DO RAFAEL MEIDEIROS
DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
    BEFORE DELETE
    ON SpotifyClone.USUARIO FOR EACH ROW
BEGIN
    DELETE FROM history WHERE usuario_id = OLD.user_id;
    DELETE FROM following WHERE usuario_id = OLD.user_id;
END$$    

DELIMITER ;
