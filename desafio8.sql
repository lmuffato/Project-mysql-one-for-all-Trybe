-- https://www.mysqltutorial.org/mysql-triggers/mysql-before-delete-trigger/
-- FEITO COM AUXILIO DO RAFAEL MEDEIROS
DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
    BEFORE DELETE
    ON SpotifyClone.USUARIO FOR EACH ROW
BEGIN
    DELETE FROM HISTORICO_REPRODUCAO WHERE usuario_id = OLD.usuario_id;
    DELETE FROM SEGUINDO_ARTISTA WHERE usuario_id = OLD.usuario_id;
END$$    

DELIMITER ;
